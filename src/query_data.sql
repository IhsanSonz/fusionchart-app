SELECT aa.no_reg AS no_registrasi, aa.reg_date::date AS tanggal_registrasi, ab.name_short AS nama_poliklinik, format_rm(aa.pid + 256) AS no_rm, get_name(aa.pid - 24) AS nama_pasien, (CASE 
		WHEN aa.ifirm_id = 1000 THEN 'BPJS'
		WHEN coalesce(aa.ifirm_id, 0) <> 0 THEN 'Asuransi'
		ELSE 'Umum'
	END) AS penjamin
FROM regpatient aa
INNER JOIN department ab ON aa.current_dept_nr = ab.did
WHERE aa.reg_date BETWEEN '2023-07-01'::date AND '2023-10-31'::date
	AND aa.is_inpatient IS FALSE AND ab.jenis_pelayanan = 1
	AND ab.did IN (
		SELECT b.did
		FROM regpatient a
		INNER JOIN department b ON a.current_dept_nr = b.did
		WHERE a.reg_date BETWEEN '2023-07-01'::date AND '2023-10-31'::date
			AND a.is_inpatient IS FALSE AND b.jenis_pelayanan = 1
		GROUP BY b.did
		HAVING count(a.*) > 1000
	);
	
SELECT (CASE 
		WHEN c.bphid IN (1, 2, 3, 4, 5, 7, 16)
		THEN d.hdrname
		ELSE 'Lain-lain'
	END) AS tipe_tagihan, c.description, c.no_reg AS no_registrasi, c.create_time::date AS tanggal_tagihan, c.sales_rs AS total_harga
FROM bill_patient_header d
INNER JOIN bill_patient_row c ON d.bphid = c.bphid
INNER JOIN regpatient a ON c.regpid = a.regpid
INNER JOIN department b ON a.current_dept_nr = b.did
WHERE a.reg_date BETWEEN '2023-07-01'::date AND '2023-10-31'::date;