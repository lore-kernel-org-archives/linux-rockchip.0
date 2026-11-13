Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DB2606B208
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 17:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x2/UJdOK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XLgYD711;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AyIU7C6a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wUGnytB5T4CySBK6rdcfwUHyyjtMsTY/3oAIIXmbo84=; b=x2/UJdOKXXyr6yZwshQ8M2KBjT
	c7B580vYlYjQbw6Kt8EUW/NMJs8LFK/lR3kYwQHf+Q5U1WHYhdOqA8KlINsCaq30biO0bxpRWUe0e
	Wa5s5JiULxSfz7rb1kHw+S0d+gG9UmcfmKKpaQ0HAo74cKP5QL9HCdskOSa91b7glJ+FR4cT1YpWw
	mpdOUyIM7HmEOrpRkhm1kcD5dXTmkxhCDDRG1TNHnPyCgsgh+2IBduL88EZG6Qlf0IIedLklbdQzH
	s+PrERB91UE3doWfAS73zNuAHEILCaNKK9HuvDzwCCmact+4pdMDJA7gtIi16iRGfPPa/W8BLZdos
	+gXSEhgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvMu-0000000DmUo-3dFz;
	Fri, 13 Nov 2026 17:47:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvMq-0000000DmTX-25z5
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 17:47:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADFRU6V3296158
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUtAykq3hDRsL0/US7WOum9GrsDms9AB2V3NWupV8pE=; b=XLgYD711Nb6RdnRZ
	pQM/51Q183vY/GeyYUbr8tGR4RkZZkYV2YZLlpgqyAn6ep8vMEH3k7k5XmsTr6Zm
	dg4JtobSMy2N/EQQcfrNKmRJT5MRHku+6LyZ696Kz4uqWEnfZDpGBQIiY5yMuVtq
	/vvumqxB+tt/zkmIDA6XX7vwN/iLx/oPCpTqQsI6KcS5POxjqi3RVrrQzff1UhCu
	qb8l4Ow38i8jqlUuWr8EBtw+dWgLGU2bfB1M33C6drxYHw5GpzI/bDQRlKe0GEuI
	4xveG2iHz8mEJb50e8UCyeyD2PMSmP8dSapmmAeePBNVReEyHsGi+9Eo+37VDu6M
	5P6New==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwvu6tec1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:47:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ed05b3eaecso8969245ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 09:47:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794592034; cv=none;
        d=google.com; s=arc-20260327;
        b=HQP685f62yWEy6lYeAnRzfopmLesKyNFH8RhdEUGkaexNHM8xqAQNIIPuXwePFRtlJ
         XLkvx7nx2xaooFYpPtFs02eHit1RcVSUcZnGVp4zcOjTcR0qSgCNUQ3AX+zGoz/pSpHr
         vfal4c/kLbDlf0QFr+u3i4d3BXM4g+9OCXkWuaPxL/7eQX2+xsOsVCtOVdtEE9GLU2i6
         E3CzZZ0KbpgfMDtJhV2x8O2z2hfkJi5PXw30FITO3eg5sho0aJC5G+vN0Qsn7YNaLD39
         LyJnnhFe9zlWBai4U9zpz6OjC1jn4wCnUebJHAYH0Tz4Vwcj9Z4WH4q/pjaa3aBQEcHC
         ODJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XUtAykq3hDRsL0/US7WOum9GrsDms9AB2V3NWupV8pE=;
        fh=Ieocxuzlj0dxERwLpVWjfoHpvVPQWF+NMxxcsGzlYgg=;
        b=Lv2uTrwUJi5tYMGUfoVKiREwMsl9DOlIaxMs2Y5h+PsUhB4231CdKlQp7CCu+dsF+G
         xLpuq6a2oeRY52aKFXkTe1JRnGlsdnEMF4S+SNeguQOYgRby0UPUe49vQg3rxLP7w8Un
         d/8BK8HBQisHdxR44fFDOQjHfi/ZjU162c6qqkUBuZXSSWmRyaH9OxnF/Z0TYq9STAH8
         s3RbVU0aGHYOoI0SPjTYpJq4w8VEp6VnVFlp6WT5Zr7FJ/dye2/jI8XDUz75mJcMPyns
         ogfZL5LaDHeDME2StUHDRqp7q+lXcHtaTh2FRHWAGd3DNVuMMuJoofTNZF2lGk5vOjHH
         tdJQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794592034; x=1795196834; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XUtAykq3hDRsL0/US7WOum9GrsDms9AB2V3NWupV8pE=;
        b=AyIU7C6aRGgv8IQ2IoSus/tWmy42t65byfEedUFfRjvYaxb9SV23ryIx79/5T4xFpZ
         ctw98huX4/Pb1C7vC5c1I6JvjYUIVqzxcDe3gJnnxPa0e/eZCJUhVkXKQYQ5tkddwA7F
         WN//G3wHyl2I4M7Ilb2k8m2okvU6KBHVWpwz2dlN7H8kKKyw9jNq7lZSknjDJSJaQCJ0
         hhhVKApvfoVG2t4AUXGooUEP2yuYcqi38M92fkm2C5NnaYd1TPNfHSXc/2NXl4UQgscs
         bkJXuKIWgIpVsdMhrLk4XytzCrNLJy3Jslj7iAcsb3fQz+JbmHn4PVRuexr330ZHBFor
         cdNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794592034; x=1795196834;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XUtAykq3hDRsL0/US7WOum9GrsDms9AB2V3NWupV8pE=;
        b=CeJnepj/pI28K8heVH5HKoWb0NVofxyUdLB2AeYGcpAcq4QLKuUKXKX7Tmld15EoWJ
         eqpjJiM0lPVtasvjSysaXmLLwkcotU+xeIspWMxOBkYq3iCKJN5cPP8vYsCx7ci8Wu5I
         TYJXFoX3QcWRVWP3AqH/ce/e/mClm7C9iit0pgRjwkl5MlrzAS/QBxnYA7n+hQlptAtl
         VWRoZhpgAhCNVFURg50IN9qI+nV5gCdhUrj03cSoV9XWlnVDvlmLh59ZxWBv+TZuABTH
         y4wzeVTU2PflWm/1ez0anFXSEzsThMT4m6nowRo27q1UB9fPgIC48UaewGMjXFMd6uqn
         qf5A==
X-Forwarded-Encrypted: i=1; AL+hErF09zp0rdxSr0d1M3recagVUBA2x90omfG4wU2lHUaQ6nVlIVW4fLdjFILqnwef0QwhPL88u/TEEg22pIET+Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z9/O1zMgdX5pa6YBwJDWKDDmAEmOCYhUBwWSgbFxUkEK1fA/jTg
	a4ZoLNt7OeunZGP6RAcrAmHmcKSK/JQ94YKqgvwdHOoLp9IhbJ3zzy7fPo2UUjzazRl9yHSsOBG
	mSrVQi8sBi8sF7bqzYdWqh0a25Fw6IjQikKTloAsNhoH8lQdbaJoNJANyHifLTBrik2diblUvQB
	+hGZD48HAQedxke+Y6ssmUN+y8YaO7/btCQa8DyviQTyyB0J4zKQ==
X-Gm-Gg: AYBFou3DVwAH2c4zbPi7PiJjmtThX1r6hBaZlGVIei/FLNy0MiEaEAPuoEBme/XvAum
	EPPIjN8jfgpAyjJG0fntLd60IbMKqQll7suV++k1e8To8dXqggdH9nvpjs37X3XANmneqF5r+UB
	Jt1idWKhkrui1NTwOLZB+Y4Gor6DUG/UuPCbXPLKQR6HBc85N0Wj/W9FHXIA==
X-Received: by 2002:a17:902:f603:b0:2ed:4456:fb2a with SMTP id d9443c01a7336-2ee0dedd363mr31379185ad.36.1794592034222;
        Fri, 13 Nov 2026 09:47:14 -0800 (PST)
X-Received: by 2002:a17:902:f603:b0:2ed:4456:fb2a with SMTP id
 d9443c01a7336-2ee0dedd363mr31378845ad.36.1794592033770; Fri, 13 Nov 2026
 09:47:13 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261101082307.151957-1-gahing@gahingwoo.com> <6777074.j6PcuT4dK6@diego>
 <CAPx+jO_gRtipR7iuh0D7G2Wi25GZoqFD1JHVbJNmhd1UyC3Bmg@mail.gmail.com> <20261112072146.41218-1-gahing@gahingwoo.com>
In-Reply-To: <20261112072146.41218-1-gahing@gahingwoo.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 18:47:02 +0100
X-Gm-Features: AclHuK_xZYTfne11hVPWnloCpcRGvh8w3tWYpN49I_tY52oUY-lip7RnFHUhpQI
Message-ID: <CAPx+jO-KKvgRS0br-3QGh6Jt4efWJ+A6YoRZKFV_bcfB+8sm6w@mail.gmail.com>
Subject: Re: [PATCH v15 00/15] accel/rocket: RK3576 NPU (RKNN) enablement
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de, finley.xiao@rock-chips.com, shawn.lin@rock-chips.com,
        tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, joro@8bytes.org, will@kernel.org,
        robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de,
        ogabbay@kernel.org, zhangqing@rock-chips.com, royalnet026@gmail.com,
        abel.vesa@oss.qualcomm.com, sebastian.reichel@collabora.com,
        sidong.yang@furiosa.ai, u.kleine-koenig@baylibre.com,
        chaoyi.chen@rock-chips.com, diederik@cknow-tech.com,
        alchark@flipper.net, leonard@lausen.nl, jeff.hugo@oss.qualcomm.com,
        rfoss@kernel.org, dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfXzxo7WbDYEUVe
 KFbQ6tlYsSibyv0+6JX/XlnzCfVjcQA9A1MYPhk0SaKL/1vpOmb2rHEPjKztoD/8Vwk5VWM3JBU
 Axvau5oegAPZfKDnQYusIrsk44UqPpL686e7gXt45PiUf3LE9pwR8tTy9IlmF09C7G4JLeNxFyq
 UpwSz+GxRHNXvdC+yXaJAjiHWPVarqPWehA5iUJo4XwNwPZ/Q3aZ7IQSes2piJNaw1NnBu7ht8P
 jEYmZJoFRcG7XD7Y54/rh7lgrzh/mKVZJADvIhknmejhyRiRom+4BZPot+274lx+cly1Z/+Hckw
 rA2fOaAoAllynJbhX46Irs0rb1zACavh5aTcvafxwqQUk1wyVPNIXgIQ/Yl+2Fl50K2YvY50Sft
 jMAu0zfcy9J8kHXDXw3UzYODVYyybTO4cW0/vOxwO3vEBKPJrql6UC1neOP4r2VW0Nf4gVR0Rl+
 6vsN4lhdBktqbeJNNYg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfX1L+c27lt072a
 8XR3joHN2OK5OPjg9/vr+jnH/NR+YdP3dA6JxS76ug1vbtr1y4BjlPGHgnLBnPBRKgtqtsRhkP7
 2IjZlNIz630Pbu/KZSOxPHjrK0885XI=
X-Proofpoint-GUID: VO4ZGCzUylErT3WRw8UCC4Or2gGjV2pA
X-Proofpoint-ORIG-GUID: VO4ZGCzUylErT3WRw8UCC4Or2gGjV2pA
X-Authority-Analysis: v=2.4 cv=JfcpPkKV c=1 sm=1 tr=0 ts=6af74d23 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8 a=s8YR1HE3AAAA:8 a=9GNsruGHAAAA:8
 a=KA_qeCUQCZmkxMg8J8kA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_05,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015
 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_094716_656377_8D21EE17 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgMTIsIDIwMjYgYXQgODoyMuKAr0FNIEppYXhpbmcgSHUgPGdhaGluZ0BnYWhp
bmd3b28uY29tPiB3cm90ZToKPgo+IFRoYW5rcyBVbGYhCj4KPiBPbiBzZWNvbmQgdGhvdWdodCwg
SSB0aGluayBpdCB3b3VsZCBiZSBiZXN0IHRvIGRyb3AgcGF0Y2ggNyAodGhlCj4gYmluZGluZykg
YW5kIHBhdGNoIDEwICh0aGUgcmVzZXQpIGZyb20gbmV4dC4gT25jZSBwYXRjaCAxMCBpcyBnb25l
LAo+IHBhdGNoIDcgaXMgbm8gbG9uZ2VyIG5lZWRlZCBlaXRoZXIuCj4KPiBGaW5sZXkgWGlhbyBm
cm9tIFJvY2tjaGlwIHBvaW50ZWQgb3V0IG9uIHYxNiB0aGF0IHRoZSByZXNldCBpcyBub3QKPiBu
ZWVkZWQsIGFuZCB0ZXN0aW5nIG9uIHRoZSBjdXJyZW50IGNvZGUgY29uZmlybXMgaXQ6Cj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2NhOTBhOTk0LTcwY2MtNDEwYS05MDJkLTVjNGMwYWFj
YzliN0Byb2NrLWNoaXBzLmNvbS8KPgo+IFBhdGNoIDkgY2FuIHN0YXkuIEkgd2lsbCBzZW5kIGEg
c2VwYXJhdGUgc21hbGwgcGF0Y2ggdG8gZml4IHRoZSBkZWxheQo+IHRhYmxlLgo+Cj4gVGhhbmtz
IQo+Cj4gSmlheGluZwoKSSBoYXZlIGRyb3BwZWQgdGhlbSBhbGwsIGxldCdzIHN0YXJ0IG92ZXIh
IEkgbmVlZGVkIHRvIGFwcGx5IGEgZml4IGZvcgp0aGUgcm9ja2NoaXAgcG93ZXIgZG9tYWluIGRy
aXZlciBhbnl3YXksIHdoaWNoIGNhdXNlZCBjb25mbGljdCB3aXRoCnRoZXNlIHBhdGNoZXMuCgpQ
bGVhc2UgcmViYXNlIG9uIG15IG5leHQgYnJhbmNoIGFuZCBzdWJtaXQgYSBuZXcgdmVyc2lvbi4K
CktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
