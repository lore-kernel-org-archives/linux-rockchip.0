Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE64606A338
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 10:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a6kXHwyX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mUkDTENG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GWl9soiL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Zxgh3raZlW2fCmYSD0t+sgYlaFlR/bQFq9PnLkyj+ok=; b=a6kXHwyXoG6bAeOWwQ7Rfxu/4h
	5uMOahAOnb1XmZgKRRjbtJks88nJwwsYQOhLBr32yU5cvQlpRLClLts9YFcv4BGXv2cQ9O/vv1Cd9
	ut57e3TuY0Iu1pU5VkI4WkYxZ2SsvU3ciJftsqJ1L+uvRsXE4jybXnlMmZG+puNEajdtLA2tyVUGz
	lnRQCxK6gGF3B6LkRQevqT/5xSMhalh8zR2M+ADIpP1fdhNGSwIkH/PMOEZRpmtwdsylY3RovyQ5s
	Y4XgnCgQH0u1SWtgYXRwAetxISX63QdhGw64v3ExFgo664uEdU+w0nQ+IDcvH6cJJq4HfbLtsYLWw
	pcLC1dIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjVC-00000003WtC-33lr;
	Tue, 10 Nov 2026 10:54:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQjVB-00000003WsO-0Iah
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 10:54:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AA8W3Wu2833613
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 10:54:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/GvGp0ikRhYCrmCcfVEdjux6pBM8MsB+KXbne/7lAoM=; b=mUkDTENGYogoUsvm
	c5dhKSLCd9QM91OJxfv7P/41BMyzplzxuqEIQ4Jwfu5jYTWHF7U1Al+4NPkDOMmz
	iga3w6m/DQz9x05Hu9jEWUPSVj0DQ+pww6XjtaK4BOzQJUUQzeMDbkvSWP1xCfQb
	0cmmsd+uwojsqcaxuywdQYFC3RKSaQSJySWIjUGOp0+hQz/+wGFAqiNu1IAv2scU
	DT56nbSTh7LM7nsybPDfJ7QOz1+gsMP0gKCTjtD8FAsMH8DKtMf/47ypSaKhclJ6
	Ld69AdFzgun8lHVDOU8Z/NTQ4NFao5unLvq/FfX3ryDlH1sx3lKBGP4vLqhuDSO1
	JmnEcA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4huyufrghg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 10:54:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3b0a9de9c2aso1437364a91.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 02:54:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794308096; cv=none;
        d=google.com; s=arc-20260327;
        b=SoNqzyZ1rvKjqyFmWwJsxoGTDWhfsTa2sC9jGN6hcvRU31Wsi6Ls0TKEgUztQ5UER9
         dr2gNJ6lLnICXtlB5JsdmCdzbLs12lYb6D0PQEQWLlc6DgK2LBPfe60xjMyvKg7KmobW
         dzNTnDZdb9iZXcEgjVSZfKO64NQNJOLyDQRzB/0yYale7eA/fd6ZJAgmih3UoBdldHos
         4MPJ2XDnUyzg0T0Nx2WWDCOMov8Q7Tlqjg2xPZ6WIS0XW3/UJ2msqqJ58kdqzXN9QTvC
         H6Nc6vApGzF0T+IUHtW+NXbc3o+CXjo28LBFxVvy7A2d0AjwH61n3SzpRpMUkrBzCCAm
         ZaDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/GvGp0ikRhYCrmCcfVEdjux6pBM8MsB+KXbne/7lAoM=;
        fh=F8HGPFnpU5yXzQHzpF3sx52QuMWIud3r7K/7pJxzalI=;
        b=flvLPrhaUu4kQiSksGv4VKe1xOIgA2SN54M+ipzXoKRMxKmT8q2j9HSB+Qu98Rz8HV
         CUkZF9aHvJak/TsJCnQ/lFGBn/SBCL+TVMzSrqolyGVnGl2LD6zQA3czVYFQpt+nPr6c
         nCfWTbZDLF55CdYM2Elowbi/g3qCCZA4efLpn0R+e8hrhYnoC3WeLGsVSEbgVxDiA3uB
         LLU/uwzgBqZiwhTAEgFZb46zoQ4rHjNYltDkWV8XfRzI98uuc8stLtIMcQ1vGegrpuOz
         caNSr8ZbYIzV8m/O3IIXQWmWEtK0ZbAWa2xYCHNBFAS3CTqN3IqSQF/cmS1YG5VSimDL
         3MJA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794308096; x=1794912896; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/GvGp0ikRhYCrmCcfVEdjux6pBM8MsB+KXbne/7lAoM=;
        b=GWl9soiL5WwKSVRKmtpDi0m//CBQQ96GHrPi5O4CBQGjR985tVZHsB6yGgrhQGL4Dm
         VBW+1zifFOmVL6zpMBT8Bsx6GvG2GcEd9+6vn+3LCd6YEg9GXyVMlDychJBrGIhq5uEZ
         1XeR1JdlNb2Vm5r25a2OTDtbu4P5+lmYDNyqWo6vUhFC+K8v+bDW+Xg6C06VzMYwzyQ2
         jcrvTav8I9M0RwkbXO/tT2R1rmm6sq8eix9LBTkzV0R4guxNOC/qIBGwNMueFOmofTBE
         FM0fH93cOWY3MtMbmBOCGlj0gm7Zi8u9hjHc8rG7K0NUgY9wLV3yKTWBe39FKO/QIQ0x
         qGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794308096; x=1794912896;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/GvGp0ikRhYCrmCcfVEdjux6pBM8MsB+KXbne/7lAoM=;
        b=t8ncDSPgTySdjCbLN0kS0U27Isob8YRzocqUaUuKCPgtAKzoSac5CYKxUposqcKQGr
         Z/VkdUwpVbxk8qNoxwXLXAwFiKDIgYJC2mXGH/WUN4wh8T+ZR55CqnpMwhKZyFiX3zoX
         Oihbw5ZriIbGNjXco3mNUUzJFktasr58TZ/T0YzgVajAH56TrnClvI2jNY2RaPkkU7Ei
         +iG0q/EOT1hxWR8i4qRF17RMI97dYOeCp4QRKttwn/VDklb7Db7DhPCIX+UT4vPb/qSa
         P77evLszI4toJ6vPVCC9moRG6z91ox4bi/j977mfbJSyHFF29LraDd2ofLEBZ9NHVWdD
         9hOQ==
X-Forwarded-Encrypted: i=1; AL+hErETsSPcl9R+Wgc80Mfi5mvNYwxWDZxe94vkVyyA1Hb8m/XlKt71IVWY2HXsx8gm01D8cmXObJCM2+LXVngUYQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z91iN+8gDN4KHFqwzc17d9j6DvdKhTZ4bFetQHNutTDeGr5lA3A
	MyM4rwiHSPHyYz2vV5b+KW8yF4NZ1IC3AzAWjPu9TrrBMkS5QfsjK+gwsC3101lG13wmpliinpR
	+4bNhWBRaxGtcyqe7/zTSAKksIAHQ1Zp8akwMaU2QyIAnawN/OsVxbeo5FHqnfdtrTUInAAS27E
	SmTdgE3MmDdg7/RMjW0V5i5ODWPNfOB/WhBr1VqC214wZoW/DHdw==
X-Gm-Gg: AYBFou3zCFrHxrFeVZm6tj7H0ZnjxLP+126/62F77/acxeVza65FD1RxIm7OZThjJ3Z
	v7fI3x0JBePNqrkdl1mHtN5BfhkpA61NZnj9UdRfCyPi6JNRpypq8DFEKpr8lxEwHywK4vxy2mf
	NRQw6I7IC5FxU+uGjN7sEpXXgvbW3xFyaJRLKSJAuCQKNTGEZ8bk8vxQm38A==
X-Received: by 2002:a17:90a:e7d0:b0:3a8:5fd6:cb6 with SMTP id 98e67ed59e1d1-3b166a5fb0bmr2419101a91.0.1794308095846;
        Tue, 10 Nov 2026 02:54:55 -0800 (PST)
X-Received: by 2002:a17:90a:e7d0:b0:3a8:5fd6:cb6 with SMTP id
 98e67ed59e1d1-3b166a5fb0bmr2419092a91.0.1794308095395; Tue, 10 Nov 2026
 02:54:55 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261101082307.151957-1-gahing@gahingwoo.com> <6777074.j6PcuT4dK6@diego>
In-Reply-To: <6777074.j6PcuT4dK6@diego>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 11:54:43 +0100
X-Gm-Features: AclHuK_tfQs_KED6YGEFdDQzYeq154VOUvxzh1aCGwTqlSdSoloobK9cAe7e-pc
Message-ID: <CAPx+jO_gRtipR7iuh0D7G2Wi25GZoqFD1JHVbJNmhd1UyC3Bmg@mail.gmail.com>
Subject: Re: [PATCH v15 00/15] accel/rocket: RK3576 NPU (RKNN) enablement
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, robh@kernel.org, krzk+dt@kernel.org,
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
X-Proofpoint-GUID: 0ZSBeIJy2Pd7xmV-CANT2FhQbpK0Yeb6
X-Authority-Analysis: v=2.4 cv=S6lMU4sP c=1 sm=1 tr=0 ts=6af2f800 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=HKy5YsogUvdA2KhsgGYA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 0ZSBeIJy2Pd7xmV-CANT2FhQbpK0Yeb6
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDA0MyBTYWx0ZWRfX/zbn4HHaXkik
 btf/ooQZ+M/0cGsJiSLW3Od2uW+RSjmBFjcWESH3Laf0UvbBCSC+j4Ta1mSoWfderi5qL43j42D
 QQgp/BPV0LzYBhfgVYeFkT/5WUKGstQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDA0MyBTYWx0ZWRfX7ZWci0fb+l23
 46IRzkTIEZE2PsUhT/7aqv+O5rlnr9UU72CPBFM4GpcWCxBbubeSH4o/hNqCxRQhIMqYri5BTLc
 ri20T1mswO8QO4Clz7viFqo2R3x0+R0XAc8TMoP9X9zg69/MOwWn2NXRzaBH6YFltuxRioV3D2w
 YMlphaDc35YP8MWFv/5Jgb/wHOyJCRId/7IBhN2axdOWYgYNMRUDGm9CQsNNhQHg+17TJBO7fwP
 +xSzFiO6de49Uvaq4inRYHdavu9KTNrv07w/N49r5k9BZnI+7iURClA8dDHT6y8zUyRPo+3pJxE
 +WolKwR/hYXLoauE13aCY8Q1qIXZJlgENC9iKOAhI8LT5TOGmqc7HWpWYGj4vwx7PNC1mewKRp3
 xmHqWAbCS+FcoDmFLNkfWupoiqOvwD88milH+j5u3ueV8Y2zzVMNPAyU5hhIZeowUVuXr48sSnk
 Xn3mfacVbkLwHqo2rSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_03,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 clxscore=1015 malwarescore=0 bulkscore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611100043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_025457_121693_28A3120C 
X-CRM114-Status: GOOD (  12.54  )
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

T24gVHVlLCBOb3YgMywgMjAyNiBhdCAxMTozOeKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgVWxmLAo+Cj4gQW0gU29ubnRhZywgMS4gTm92ZW1iZXIg
MjAyNiwgMDk6MjI6NTIgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBKaWF4
aW5nIEh1Ogo+ID4gVWxmIG9mZmVyZWQgdG8gdGFrZSA3LCA5IGFuZCAxMC4KPgo+IEkndmUgbm93
IGxvb2tlZCBhdCB0aGUgcGF0Y2hlcyBpbiBxdWVzdGlvbiBhbmQgdGhleSBkbyBsb29rIGdvb2Qg
dG8gZ28uCj4gU28gaXQgd291bGQgYmUgbmljZSwgaWYgeW91IGNvdWxkIHBpY2sgdGhvc2UgdXAs
IHdoZW4geW91IGhhdmUgYSBtaW51dGUgOi0pCj4KPiBUaGFua3MgYSBsb3QKPiBIZWlrbwo+Cj4K
ClBhdGNoIDcsIDkgYW5kIDEwIGFwcGxpZWQgZm9yIG5leHQsIHRoYW5rcyEKCktpbmQgcmVnYXJk
cwpVZmZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
