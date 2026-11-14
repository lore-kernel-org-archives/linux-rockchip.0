Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAB606A32E
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 10:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZhwTbmk7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=a8T9NsW8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=RZfOk9ay
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MmyOu6JXkfj20yANhJA6wN4KxC9P3bg41Za9GbN+6XU=; b=ZhwTbmk7TMv0UsI4M7cPxzC5FS
	qSwXw7KG9Ue/2XjUOLI6PpKDa3TYmA9XjRGyuF/+bJJ9vaMnSIOxUXGB0XKg4fe/Fn74QCl6qAWlv
	U/wmAkxMhVknzITzY2Uem0hSmL1Yhlx3lOT2OYsrJM8Y5gw47uBaLNx4GPgKnXyDjYIfDB+pE7ukK
	am4AYATIiM/sm7lbL1gICOxoOQ6IinQ1aj1DllxcLpsiUSiP5fv5c0gYv4KgAUL7/M4wlXEQURfTy
	3nIyR8tdQwEfl5ltwBonuZhvq1fLLkW1Dv/KEQE4/eA42PvQRIebf4oldHQAoBT7kGYBaneDTHEvs
	LI54Nh0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAzp-0000000FlDI-0wwO;
	Sat, 14 Nov 2026 10:28:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSAzl-0000000FlCE-2QZY
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 10:28:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9xA791090666
	for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 10:28:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DGFPoUFp3t53fChFBXjug+JBh7L+UZESY63HviqEWfU=; b=a8T9NsW8Qtkzm2OA
	wTXhAP4j3z4dEq5b1dzSux/5NfpP+TGTmcynSUWUjORJfbmA81ixFnKR33dJrCQq
	GP2kYsFuD9U2rAzmKLdGHPffE7bdPQZhJu0c8egNQzVvcOPsCAeZdMF8tJ2kmlNq
	Xy43dqmNrH74x+n4gbouuLiYpb8UIAokQXXb0FYNaCJs8jFwx96+OhpiP0KbcXal
	jtJiyAnCeecDKkv8puFaE76DN+n9V2PzeNEf+BzXGUD780m9Yr2cOho4BJzEtQIJ
	Jm8PKACog5/Kg384ClwTlpG5qjdWDZNyzauDWd6Ieig+aY4dvQbhielPtmhERZcH
	z95IFw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhm8rgg2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 10:28:28 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ed8aca9775so17518875ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 02:28:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794652107; cv=none;
        d=google.com; s=arc-20260327;
        b=G4cieZLT0cPOUUrTpm/Xg+dffsCk6qUgO3yXULJrzzixG7xSjNj7AB8oAq04Um0iHT
         E8VA/D13GIfsuFuSK4T9sUDjw4vc1F0OEw1Ls/QrFgCCiiFAMMyzaoSBjge6no0iJHsf
         xy7VqLfev68kiWkEssg0U5G4CNwk7yvbwEi3K5vTbqbsxZPJM6vS7tuxgTWZHQfIgYrd
         Of1L9z/dAH+kFXlBiXoyHt1sncpuVuD2xFzGQbYKkF6wtKa6lrScKpDF6vmvUFuYhE0N
         /TUZ2bUEs8JnoEmG6xLxxME59T2prLsYAd2BtUiZcCO5VkkrXFjLPHb9INlrA79SRbSM
         7kkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DGFPoUFp3t53fChFBXjug+JBh7L+UZESY63HviqEWfU=;
        fh=ql817NhxnW4WKouUAqfee4jYQEkAcmQXiDW8tCbuBSE=;
        b=hd8d8PnmG9aXH9HDVIOZi4z55bi4flAtBdfjXQxFmr0ru2jLrR8kcn3mvyHQSk+IPF
         a3TYrIh1c7GP9MBY0MEvgiWyPKej3GS7OieurQ5oeMpfvGH4/Vh6EP4YrAgcq2RQnZZx
         w7jmjNauGymbv+XAbV+vuqL/L6upI+UTDpyuZkirPmtRGXLsmAugDmYHRsAMtVXyFKi0
         v9QzCMQiIOxC7rztS5GgkLhc3CdCqdm1eb0W2Yv2/jO6ECCDARs25YdKSFtGxh+ATnbA
         n8t+Mhhs24NsogaxtmOF84bGlP5VYgPP5Ghh3i6cCEB1ZbRiYJraObL5ydox4djB2bQw
         QfZg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794652107; x=1795256907; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DGFPoUFp3t53fChFBXjug+JBh7L+UZESY63HviqEWfU=;
        b=RZfOk9ayJpm1faUh19JUoyMUCiL6h6jjMSFLsClGF/oQ0bZx8SXMFYcXjqxGlE5gmu
         jDyfxUvC74fLZnH/byQRtSpTRqnE3txBpMprBagaOaLHsSWOD6kAZB7A2h6lfXdyWqok
         fIsotpd9VVDVElLbzL52kSCjfNoXxRplArq4+Ox1V4oGCfr/ARcNapPOYn0tcQhjicbQ
         kXxtPYVeas4p6fS/QPcnkgqLJShmUO0FT5gj8guKugr4vz/SU1/Y2l+jpf4jLlsjZMVG
         0MX8ASWyMgkDwuwZSXzxUCf0ul67y7wEa2FkZOFEXfK2Sax9It6HXKSTnzESITPUM32V
         xKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794652107; x=1795256907;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DGFPoUFp3t53fChFBXjug+JBh7L+UZESY63HviqEWfU=;
        b=2L8VUHtyp9KB2RHqQmcn2RIP036+2moUozYeHM5r54f0tvmClf1bs5/3kqygIFbdJ0
         l5YmNGyIsb0maCklxsC1YY44EyIrmRhuXnCoFeYexFJWPCgj4qObPVVzOpCdhTg1FVKH
         A5eFbKF2pkZttpdGS7FBi9GAWANcJXabJKU4YjdmUL6Tz+DShqvdx3GZ69l87VLlTNQP
         r3v4kn/ezciZMT2qYFadXGl5sNCAlyEhoL5EQR0VDgC5MUBB+rppQFthHzBevLorKEiE
         g/dvliaGC4Vd0YIN1MTDXn46YeBNovJabj7LNt5EXqvYH1koXVe2XhVWZ/kiDuPicM48
         /jOA==
X-Forwarded-Encrypted: i=1; AL+hErElgE1EJ8+e1PLJOGHRrRyV/a5S0JE9EXk0MJCMsYMGmygriSJesoNe89ecyOc4zLY5d4JgxDaRFq5879I91A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+L/dVdOqD4O5e9UP8vkjPxaImisI6ZgbdNBpmFQPUzITPs1Qn4
	h1Z3V1u2AcMEtWW3U6qflDPvLXyklgRclWPh8OAMw7yGUDcvT1YC2q9ZcrIF47zekEvTpExogsc
	BspqdZocKtqfoZg2vM7FA5qxatCU03D3RCNCRHhjTxNdTRzcsLqWjfbj0oabPHYKN8bhGCvJdlE
	aYpAFicBoOLDJIXGuDhpM+gfa+Pj28tdgCxXugZY4OEH8DpdRmlg==
X-Gm-Gg: AYBFou2XLpLdKG2Hu5LMTdvn3n2UNPTIi9XP3wDCyvQEHImdjPXdzyx2AqgFacU3t+V
	iBeI5YpHQJIGqGM3pXehC87vKGY1+nZ1CtdlhwMK8h7pZAJx2wGZiiONArxXt9dTLC31cQk9A5M
	1BKDn5YP+iN0OmPKaSN/224Ua3RSjFqUEHi8qtL8W4vXs9KjCXApIQwzD9rQ==
X-Received: by 2002:a17:903:3bc7:b0:2e4:ade3:7290 with SMTP id d9443c01a7336-2edf2161b1bmr54624965ad.30.1794652107150;
        Sat, 14 Nov 2026 02:28:27 -0800 (PST)
X-Received: by 2002:a17:903:3bc7:b0:2e4:ade3:7290 with SMTP id
 d9443c01a7336-2edf2161b1bmr54624825ad.30.1794652106635; Sat, 14 Nov 2026
 02:28:26 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261104-add-board-ok3572-c-pmdomain-v4-0-15cf8b5a6e59@qq.com>
In-Reply-To: <20261104-add-board-ok3572-c-pmdomain-v4-0-15cf8b5a6e59@qq.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 11:28:15 +0100
X-Gm-Features: AclHuK8CTcJQlL9BkywlS1ynPK24J1pLlK3GHhNiwRM1F-ARTEv9AUD_jeySnPU
Message-ID: <CAPx+jO_88-xLLiPeE1QPjceCBpBuX0ZXsB=-vVVcGmx_6vnWCA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] pmdomain: rockchip: Add RK3572 power domains
To: 1579567540@qq.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Elaine Zhang <zhangqing@rock-chips.com>, Ulf Hansson <ulfh@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=ItKL47/g c=1 sm=1 tr=0 ts=6af837cc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=bC-a23v3AAAA:8 a=dZbOZ2KzAAAA:8 a=VwQbUJbxAAAA:8
 a=s8YR1HE3AAAA:8 a=JfrnYn6hAAAA:8 a=4uetKMasqe67zdwg2QcA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=FO4_E8m0qiDe52t0p3_H:22 a=jGH_LyMDp9YhSvY-UuyI:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0MSBTYWx0ZWRfX+Kdzln57HJRp
 8/vZEVgrOaHa8ss5syACAJ/upCmBu3gVFiOtmNGV57eh9IUqkCufrvD+PKtQL7reSp1jy7S8Oeb
 QUOOsik2FyLSJvRqzlZ7kh583W5CCHg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0MSBTYWx0ZWRfXzXkIjpD5Lh4Q
 C1j7p8x4WMFnokFYWPAoaX7sVbPulPxvIynraelpyrePtfbd2pVpYeEAThbdXynM/Fwv5sjbkGw
 Bmp31b3n4/TfvMWG/i25VKQpL4ab+07XTfMQpu8YsVyjMrVDSUVWHZ/wkEBYGHgbQnraSOwEK9X
 ubTAOvEGBrhXkyI8+J8701TAK5EwzxlyRMUZUZH0HvBczo3SiTA9K4WeGlcTSyPLuiC8XdIyet2
 +tQBMIFMMweUbFY/m61/09dSXih0ioO/sRDzKduL+pVtM1trOPHcJp8jj/88AcHPQl4gHQ7zRt8
 V20ikwmeQKrcZ9b1N6l7QZ1RXt44AxLCtuwcJc9EAswSQy70ltJZrLlx6l+0Vst473Cw9vFlfH4
 khwIUIQJmH13SCtpOorRactFr9s/tgzvTKt1qdGXLnYtMpmk6yAXlKoUobEmAQYL/lddeZUNyFF
 QC/E8ZeL++6ZfS2koLA==
X-Proofpoint-ORIG-GUID: OzjPVv2GyAS2ppVd_e6a9UGjqde7goUz
X-Proofpoint-GUID: OzjPVv2GyAS2ppVd_e6a9UGjqde7goUz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611140041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_022829_749171_9AB81607 
X-CRM114-Status: GOOD (  35.22  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgNCwgMjAyNiBhdCA5OjU34oCvQU0gQ3VuaGFvIEx1IHZpYSBCNCBSZWxheQo8
ZGV2bnVsbCsxNTc5NTY3NTQwLnFxLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPgo+IFRoaXMgaXMg
b25lIG9mIHRoZSBzdWJzeXN0ZW0gc3VibWlzc2lvbnMgZm9yIFJLMzU3MiBzdXBwb3J0Lgo+Cj4g
VGhpcyBzZXJpZXMgYWRkcyB0aGUgUkszNTcyIHBvd2VyLWNvbnRyb2xsZXIgYmluZGluZyBhbmQg
cG93ZXIgSURzLAo+IGZvbGxvd2VkIGJ5IHN1cHBvcnQgZm9yIGFsbCAxNCBwb3dlciBkb21haW5z
LiBJdCBpbmNsdWRlcyBzeXN0ZW0gR1JGCj4gZmlybXdhcmUgc2hpZnQtcmVhZHkgY2hlY2tzLCBO
UFUgdm9sdGFnZS1kb21haW4gY29udHJvbCBhbmQgZ2VucGQgc3RhcnR1cAo+IHByb3RlY3Rpb24g
Zm9yIGJvb3QtZW5hYmxlZCBJTUcsIFZPUCwgVk9QX1BSRSBhbmQgVk8uCj4KPiBUaGUgUkszNTcy
IFNvQyBoYXMgZWlnaHQgQ1BVIGNvcmVzOiB0d28gQ29ydGV4LUE3MyBjb3JlcyBhbmQgc2l4Cj4g
Q29ydGV4LUE1MyBjb3Jlcy4gSXQgYWxzbyBpbnRlZ3JhdGVzIGFuIEFybSBNYWxpLUczMTBWMiBN
QzEgR1BVLgo+IFRoZSBPSzM1NzItQyBib2FyZCBwcm92aWRlcyB0d28gR2lnYWJpdCBFdGhlcm5l
dCBwb3J0cywgdGhyZWUgVVNCMyBUeXBlLUEKPiBwb3J0cywgYSBUeXBlLUMgZHVhbC1yb2xlIHBv
cnQsIGVNTUMsIG1pY3JvU0QsIGFuZCBVQVJULgo+Cj4gVGhpcyBzZXJpZXMgZGVwZW5kcyBvbiB0
aGUgc2VwYXJhdGVseSBzdWJtaXR0ZWQgcG93ZXItb24gcm9sbGJhY2sgZml4IFsxXS4KPiBGaXJt
d2FyZSByZWFkaW5lc3MgZmFpbHVyZXMgcmV1c2UgaXQsIHByZXNlcnZpbmcgdGhlIG9yaWdpbmFs
IGVycm9yIGFuZAo+IHNhdmVkIFFvUy4gSWYgcm9sbGJhY2sgZmFpbHMsIHRoZSBkb21haW4gbWF5
IHJlbWFpbiBvbiB3aGlsZSByZXNvdXJjZXMgYXJlCj4gcmVsZWFzZWQgYW5kIGdlbnBkIG1heSBw
b3dlciBkb3duIGl0cyBwYXJlbnQuCj4KPiBbMV0gaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIw
MjYxMTAxLWZpeC1yb2NrY2hpcC1wbWRvbWFpbi1wb3dlci1vbi1yb2xsYmFjay12MS0xLTU5YTQ1
NzgzZTMzZUBxcS5jb20KPgo+IFRlc3Rpbmcgd2FzIHBlcmZvcm1lZCB3aXRoIERlYmlhbiAxMyBt
aW5pbWFsIGFuZCBMaW51eCA3LjMgb24gdGhlCj4gT0szNTcyLUMgd2l0aCB0aGUgRkVUMzU3Mi1D
IG1vZHVsZS4gU2hhcmVkIHBlcmlwaGVyYWwgdGVzdHMgd2VyZSBydW4gd2l0aAo+IHRoZSBzeXN0
ZW0gYm9vdGVkIGZyb20gU0QsIHdoaWxlIGVNTUMgdmFsaWRhdGlvbiBjb3ZlcmVkIHRoZSBjb21w
bGV0ZQo+IGJvb3QgY2hhaW4uCj4KPiBQYXNzZWQgZnVuY3Rpb25hbGl0eToKPgo+IC0gU0QgYW5k
IGVNTUMgY29tcGxldGUgdGhlIGZpcm13YXJlLCBrZXJuZWwsIGFuZCByb290IGZpbGVzeXN0ZW0K
PiAgIGJvb3QgY2hhaW4uCj4gLSBVQVJUIGNvbnNvbGUgd29ya3MgYXQgMTUwMDAwMCBiYXVkLgo+
IC0gU0QgcmVhZC93cml0ZSBhbmQgZGF0YSBwZXJzaXN0ZW5jZSBjaGVja3MgcGFzcy4KPiAtIEFs
bCBlaWdodCBDUFVzIHN0YXJ0OyBDUFUgZnJlcXVlbmN5IHNjYWxpbmcgYW5kIGhvdHBsdWcgY2hl
Y2tzIHBhc3MuCj4gLSBCb3RoIEV0aGVybmV0IHBvcnRzIG9idGFpbiBJUHY0IGFkZHJlc3NlcyBh
bmQgcGFzcyBiaWRpcmVjdGlvbmFsIGZpbGUKPiAgIHRyYW5zZmVycy4KPiAtIEFsbCB0aHJlZSBU
eXBlLUEgcG9ydHMgcGFzcyBVU0IyIGFuZCBVU0IzIGVudW1lcmF0aW9uLCBkYXRhIHRyYW5zZmVy
cywKPiAgIGFuZCByZWNvbm5lY3QgcGVyc2lzdGVuY2UgY2hlY2tzLgo+IC0gVHlwZS1DIGhvc3Qg
YW5kIGRldmljZSBtb2RlcyBwYXNzIGluIGJvdGggcGx1ZyBvcmllbnRhdGlvbnMuIFBoeXNpY2Fs
Cj4gICByZWNvbm5lY3RzIGNvcnJlY3RseSBzZWxlY3QgdGhlIGV4cGVjdGVkIGRldmljZSwgaG9z
dCwgYW5kIGRldmljZSByb2xlcwo+ICAgaW4gc2VxdWVuY2UuCj4KPiBTdGFiaWxpdHk6Cj4KPiAt
IFJlcGVhdGVkIGNvbGQgYW5kIHNvZnR3YXJlIHJlYm9vdHMgY29tcGxldGUgb24gU0QgYW5kIGVN
TUMgd2l0aG91dAo+ICAgZGF0YSBpbnRlZ3JpdHkgZmFpbHVyZXMgb3IgcG93ZXItZG9tYWluIHRy
YW5zaXRpb24gZmFpbHVyZXMuCj4gLSBBIGNvbWJpbmVkIENQVSwgbWVtb3J5LCBuZXR3b3JrLCBT
RCwgYW5kIFVTQjMgc3RyZXNzIHRlc3QgY29tcGxldGVzCj4gICB3aXRob3V0IGEgY3Jhc2gsIGxv
Y2t1cCwgQ1BVIG9mZmxpbmUgZXZlbnQsIG9yIHRoZXJtYWwgc2h1dGRvd24uCj4gLSBFdGhlcm5l
dCBlcnJvciBhbmQgZHJvcCBjb3VudGVycyBkbyBub3QgaW5jcmVhc2UgZHVyaW5nIGJpZGlyZWN0
aW9uYWwKPiAgIG5ldHdvcmsgdGVzdHMuCj4KPiBQb3dlci1kb21haW4gdmFsaWRhdGlvbjoKPgo+
IC0gQWxsIDE0IGRvbWFpbnMgcmVnaXN0ZXI7IDExIGNvbXBsZXRlIDEsMTQwIHJ1bnRpbWUtUE0g
Y3ljbGVzLiBOUFUgVkQKPiAgIHNlcXVlbmNpbmcgYW5kIHN0YXJ0dXAtcHJvdGVjdGlvbiByZWxl
YXNlIGFyZSBjaGVja2VkLgo+IC0gUGh5c2ljYWwgY29sZCBib290IHdpdGggYW4gZU1NQyByb290
IGZpbGVzeXN0ZW0gc3VjY2VlZHMuIFJlYWQvd3JpdGUKPiAgIGNoZWNrcyBwYXNzIG9uIGVNTUMs
IFNEIGFuZCB0d28gVVNCIHN0b3JhZ2UgZGV2aWNlczsgYm90aCBFdGhlcm5ldAo+ICAgcG9ydHMg
cGFzcyBwaW5nIHRlc3RzIGJvdW5kIHRvIHRoZWlyIHJlc3BlY3RpdmUgaW50ZXJmYWNlcy4KPiAt
IFRoaXJ0ZWVuIHJldHVybi12YWx1ZSBpbmplY3Rpb25zIGFmdGVyIHN1Y2Nlc3NmdWwgb3BlcmF0
aW9ucyBjaGVjawo+ICAgaWRsZS1leGl0IGFuZCBmaXJtd2FyZS1yZWFkaW5lc3Mgcm9sbGJhY2ss
IE5QVSBjbGVhbnVwLCBvcmlnaW5hbCBlcnJvcnMKPiAgIGFuZCBzYXZlZCBRb1MuIFJldHJpZXMg
c3VjY2VlZCBhZnRlciByZW1vdmluZyBpbmplY3Rpb24uCj4gLSAxMjQgaG9zdCBtb2RlbCBjYXNl
cyB1c2luZyB0aGUgZHJpdmVyIGFuZCBnZW5wZCBwYXNzIEFTYW4gYW5kIFVCU2FuLgo+Cj4gQnVp
bGQgYW5kIGNoZWNrczoKPgo+IC0gVGhlIGtlcm5lbCwgbW9kdWxlcywgYW5kIGJvYXJkIERUQiBi
dWlsZCBzdWNjZXNzZnVsbHkuCj4gLSBTdHJpY3QgY2hlY2twYXRjaCByZXBvcnRzIG5vIGVycm9y
cy4KPgo+IFVudGVzdGVkIGhhcmR3YXJlIGFuZCBwYXRoczoKPgo+IC0gTlBVCj4gLSBQQ0llCj4g
LSBHUFUsIHZpZGVvIG91dHB1dCwgYW5kIGF1ZGlvCj4gLSBDUFUgcmF0ZXMgYWJvdmUgMS4yIEdI
eiBhbmQgdm9sdGFnZSBzY2FsaW5nCj4gLSBPdGhlciBsb3ctc3BlZWQgZXh0ZXJuYWwgaW50ZXJm
YWNlcwo+Cj4gU29tZSBmaWxlcyBpbiB0aGlzIHNlcmllcyBhcmUgZGVyaXZlZCBmcm9tIHRoZSBG
b3JsaW54IE9LMzU3Mi1DIEJTUAo+IEFscGhhMS4gVGhhbmtzIHRvIEZvcmxpbnggZm9yIHRoZWly
IHN1cHBvcnQuCj4gVGhhbmtzIGFsc28gdG8gUm9ja2NoaXAncyBEYXZpZCBXdSwgRWxhaW5lIFpo
YW5nLCBGaW5sZXkgWGlhbywgRnJhbmsKPiBXYW5nLCBXaWxsaWFtIFd1LCBhbmQgWWUgWmhhbmcg
Zm9yIHByb3ZpZGluZyB0aGUgZHJpdmVyIHNvdXJjZSBmaWxlcy4KPgo+IEFJIGFzc2lzdGFuY2U6
Cj4KPiAtIENvZGV4IC8gRGVlcFNlZWsgVjQuMSBGbGFzaCB3ZXJlIHVzZWQgZm9yOgo+ICAgLSBS
ZXZpZXdpbmcgYW5kIGFkanVzdGluZyBjb2RlIHN0eWxlIHRvIGZvbGxvdyBjb21tdW5pdHkgY29u
dmVudGlvbnMKPiAgIC0gQXV0b21hdGluZyB0ZXN0cwo+ICAgLSBDb2xsZWN0aW5nIGRhdGEKPgo+
IFNpZ25lZC1vZmYtYnk6IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4gLS0tCj4gQ2hh
bmdlcyBpbiB2NDoKPiAtIERyb3AgZ2VuZXJpYyBwZW5kaW5nLXN0YXRlIHRyYWNraW5nIGFuZCBw
b3dlci1vZmYgcmVjb3Zlcnk7IHJldXNlIHRoZQo+ICAgc2VwYXJhdGUgcG93ZXItb24gcm9sbGJh
Y2sgZml4IGZvciBmaXJtd2FyZSByZWFkaW5lc3MgZXJyb3JzLgo+IC0gU3VwcG9ydCBhbGwgMTQg
ZG9tYWlucywgaW5jbHVkaW5nIE5QVSB2b2x0YWdlLWRvbWFpbiBjb250cm9sIGFuZAo+ICAgY2xl
YW51cCBhZnRlciBmYWlsZWQgdHJhbnNpdGlvbnMuCj4gLSBSZXRhaW4gYm9vdC1lbmFibGVkIElN
RywgVk9QLCBWT1BfUFJFIGFuZCBWTyBkb21haW5zIHVudGlsIHN5bmNfc3RhdGUuCj4gLSBVc2Ug
ZmlybXdhcmUgc2hpZnQtcmVhZHkgbmFtaW5nIGZvciB0aGUgR1JGIHN0YXR1cy4KPiAtIEJ1aWxk
IHVuZ2F0ZSB3cml0ZSBtYXNrcyB3aXRoIHVuc2lnbmVkIGFyaXRobWV0aWMuCj4gLSBMaW5rIHRv
IHYzOgo+ICAgaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYxMDI2LWFkZC1ib2FyZC1vazM1
NzItYy1wbWRvbWFpbi12My0wLTcwZDYxNGQzZDkyMUBxcS5jb20KPgo+IENoYW5nZXMgaW4gdjM6
Cj4gLSBUcmFjayBpbmNvbXBsZXRlIHNodXRkb3ducyB0byBwcmVzZXJ2ZSBRb1MgYW5kIGNvbXBs
ZXRlIGZpcm13YXJlIHVwZGF0ZXMuCj4gLSBQcmVzZXJ2ZSBwZW5kaW5nIG1lbW9yeSByZXNldHMg
YWNyb3NzIHNodXRkb3duIGFuZCBjYW5jZWwgdW5maW5pc2hlZAo+ICAgcG93ZXItb24gcmVxdWVz
dHMuCj4gLSBBdHRlbXB0IHRvIHJlc3RvcmUgdGhlIGRvbWFpbiBhZnRlciBwb3dlci1vZmYgZXJy
b3JzLCB3aGlsZSBwcmVzZXJ2aW5nCj4gICB0aGUgb3JpZ2luYWwgZXJyb3IgcmV0dXJuZWQgdG8g
Z2VucGQuCj4gLSBMaW5rIHRvIHYyOgo+ICAgaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYx
MDIzLWFkZC1ib2FyZC1vazM1NzItYy1wbWRvbWFpbi12Mi0wLTc5ZGRkNDJlOTJjMUBxcS5jb20K
Pgo+IENoYW5nZXMgaW4gdjI6Cj4gLSBTcGxpdCB0aGUgb3JpZ2luYWwgUkszNTcyIHN1cHBvcnQg
c2VyaWVzIGJ5IHN1YnN5c3RlbS4KPiAtIFRyYWNrIGxvdy1sZXZlbCBwb3dlci1vbiBhbmQgcmVz
dG9yYXRpb24gc2VwYXJhdGVseS4gUmV0YWluIHVuZmluaXNoZWQKPiAgIG1lbW9yeSByZXNldHMg
YWNyb3NzIHJldHJpZXMsIGF2b2lkIHJlcGVhdGluZyBjb21wbGV0ZWQgcmVzZXRzLCBhbmQKPiAg
IHByZXNlcnZlIFFvUyBzbmFwc2hvdHMgd2hlbiBzaHV0dGluZyBkb3duIGFmdGVyIGEgZmFpbGVk
IHBvd2VyLW9uLgo+IC0gTGluayB0byB2MToKPiAgIGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8y
MDI2MTAyMi1hZGQtYm9hcmQtb2szNTcyLWMtdjEtMC0wYjBmZDg1YTMxZWVAcXEuY29tCj4KPiAt
LS0KPiBSYXcgZG1lc2c6IHNlZSB2MiBjb3ZlciBsZXR0ZXIuCj4KPiBUbzogUm9iIEhlcnJpbmcg
PHJvYmhAa2VybmVsLm9yZz4KPiBUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJu
ZWwub3JnPgo+IFRvOiBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+Cj4gVG86IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gVG86IEVsYWluZSBaaGFuZyA8emhhbmdx
aW5nQHJvY2stY2hpcHMuY29tPgo+IFRvOiBVbGYgSGFuc3NvbiA8dWxmaEBrZXJuZWwub3JnPgo+
IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBtQHZnZXIu
a2VybmVsLm9yZwo+Cj4gLS0tCj4gQ3VuaGFvIEx1ICgxKToKPiAgICAgICBwbWRvbWFpbjogcm9j
a2NoaXA6IEFkZCBSSzM1NzIgcG93ZXIgZG9tYWlucwo+Cj4gRmlubGV5IFhpYW8gKDEpOgo+ICAg
ICAgIGR0LWJpbmRpbmdzOiBwb3dlcjogcm9ja2NoaXA6IEFkZCBSSzM1NzIgcG93ZXIgZG9tYWlu
cwo+Cj4gIC4uLi9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwg
IHwgIDE3ICsrKwo+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyAgICAg
ICAgICAgICB8IDE2OCArKysrKysrKysrKysrKysrKysrLS0KPiAgLi4uL3Bvd2VyL3JvY2tjaGlw
LHJrMzU3Mi1wb3dlci1jb250cm9sbGVyLmggICAgICAgfCAgMzAgKysrKwo+ICAzIGZpbGVzIGNo
YW5nZWQsIDIwNCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNv
bW1pdDogOTllM2JiMmM2ZjI0NmYzODE3OWNjNTY5ZTM4YTQ1ZDk1NTUyMDZlZAo+IGNoYW5nZS1p
ZDogMjAyNjEwMjMtYWRkLWJvYXJkLW9rMzU3Mi1jLXBtZG9tYWluLTJmMDJkYTExMzg2ZQo+Cj4g
QmVzdCByZWdhcmRzLAo+IC0tCj4gQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPgo+CgpU
aGVyZSBhcmUgcXVpdGUgYSBsb3Qgb2YgcGF0Y2hlcyBvbiB0aGUgcm9ja2NoaXAgcG93ZXIgZG9t
YWluIGRyaXZlcgppbiB0aGUgcGlwZS4gT24gbXkgZW5kLCBJIGNhbiBvbmx5IHRyeSB0byBhcHBs
eSBwaWVjZXMgYnkgcGllY2UsIGJ1dAppdCB3b3VsZCBiZSBuaWNlIGlmIHlvdSBjb3VsZCBzdGFy
dCByZXZpZXdpbmcgZWFjaCBvdGhlcidzIHBhdGNoZXMgdG8KaGVscCBjb29yZGluYXRlIHRoaXMg
Yml0LgoKQW55d2F5LCB0aGlzIHNlcmllcyBuZWVkcyB0byBiZSByZWJhc2VkIG9uIHRvcCBvZiB0
aGUgbGF0ZXN0IGNoYW5nZXMKdGhhdCBJIGhhdmUgcXVldWVkIGZvciBuZXh0LiBJIHdpbGwgaGF2
ZSBhIGxvb2sgd2hlbiB0aGF0J3MgZG9uZS4KCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
