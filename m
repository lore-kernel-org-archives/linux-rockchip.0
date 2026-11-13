Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21903606C0BD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 17:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jTB/Q3Y5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RcznuWyK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=PqbKYHS6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RcjRYq9Vg+VJ5Q5DVA61L/bw6DKVK6K6q6Ecqa/RUQI=; b=jTB/Q3Y5e1pf78Et5eT7dL7awc
	OLz3kmMPcdomqnfTCBiYsKy8ObMX0d2OrkGwm8TAr2Jj5K75GLspFGI6Rf9UTVV9tTUYds2X0a2WJ
	vt8wINfNSMhb/RX04P2cLFaqajBNzz+porhCWE50exnKOdrTK1DmK0lrzaF51L4l8Ix+n2vd+Jgp5
	jOzpYATjXouw34eW9sGP25AGvdLANrceVBN9lA3wfT/4PcOBpnfARUw4HcZv/ggZ/eO03DEE5DNU6
	Ov7N17asleEXjeV3xUo4Kgwp6evDCidPrHLODzsSls58583Ue8GGkL7zHAwXE1mOcr82/J9a01BGj
	7SlWRLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvNM-0000000Dmfx-0cuD;
	Fri, 13 Nov 2026 17:47:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvNK-0000000Dmed-0KdD
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 17:47:47 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ADFR2ch1076130
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fe7oP9kUiaU4IMzTAKOazExG143SLUu/fzcBtQwA6ZE=; b=RcznuWyKp1IBp9Mf
	p6xVOeD3Y/BJqD1rDuzzbT3i/578VJmkuaXrNGeAW7aRQwD9RaoBB6eCuAoF84BZ
	9NhLPsT/8N78CBXiGQnn4bY5ohFkrk0VvKX05XSEGtKCNpEYi9Kc41pkBeTJ2yuB
	2y4Nbma6Y/pr40wypVnROv/iBBYhSdqdyZpGJvGrgyeAZF2gbZ2JJhhFeHiELT8d
	dpk3RfYzniz4y8bWkk7RWTNdnbKu/2yUJHZSMxleFXp4uYv0KvBoYoDk0tnaZplY
	GbXuf6uYLmXthYtNQFM1BlD9+jbtkNNp3XEnpc+mZp2ap3/Ki6FWCSbmR1vWdcPq
	ixjK1A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwh0amvt0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 17:47:44 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cddc4bde4b1so1211425a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 09:47:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794592064; cv=none;
        d=google.com; s=arc-20260327;
        b=E3QunfYx1YMpaVpfE1bKN9FuK4qzB3xNay61CSesn4e9adYXFqVc1FljVZai/7i0wv
         SSRknDtzIGrWQckO60gU+vF1c0zKc9jMzkIJzv5LJEhWuwsSlQ+UcSce7aFIOKDCQiDU
         z9mPKcmy07UqHWxMkkQ35wGsuIvohPKdKH14el4G1QruyTE2yj5Yo/vgdnJHnPpXS9Hk
         A8rD2llXIfQOqcRpLj/aF/6eV1MOi/XiKeD6RnEFWasG6UeWeM8E/IEqct2STtVgUjnQ
         fhzMu/pTzFeUABSDCx4wBype7cpOsQSj7hoBdHwgdsbPdT8SKvisFCtgV1mWbcgRhKtv
         B+Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Fe7oP9kUiaU4IMzTAKOazExG143SLUu/fzcBtQwA6ZE=;
        fh=AhU3eFv5XSrrYXpFG7ryXqm7IJOBMkGokuWJrhzNeqo=;
        b=lza6sJKMlc9RTBmsfKfLUWm2xGxoSOeBUSkc9X9pKHe6QWhi+mWyp2h36/mazsHBTH
         ocHOmUDTgybHkb5pvmman+CwtwworCuQhEEhvjYJTS3DK+I/qIOE5O2JfM841up1Z5AN
         DFtI9aZLWHxJYbnrnSQibQiYdJPcbpldEm+vhA3ESC2ZfYIhGppDlYntGKsc7RDCd9Hq
         X1EeiLIcRbVG5y4U1aUg2mzrxlPICi2a54KXDv8Stqkf0an6tmEmUKP8jviJfj00UInE
         JAbJW8WJL8IBKdgbDJSWDN/WDcdssMt/a/zwgeUM9Rnr+hvEhEC+REKFH6yyn3Gy5UWU
         coNw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794592064; x=1795196864; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Fe7oP9kUiaU4IMzTAKOazExG143SLUu/fzcBtQwA6ZE=;
        b=PqbKYHS6M6AQmrd1QCWJrRIK6s8JjFrjyIK+H8N9UU/nxQc/5d21QVtFbEIdPZw0WR
         pw2yjh3bffJa/Io3jZxaAj5upUnIOscklgH0jXWd640Ify1CnELM/ZQkY9HmMcijZZdV
         OukUy3JwEG2r5BXgcb9OCK84NLOJGVZMzn5bks8HtE7Zyl554FHH0/rVAJhLRHnxhoKn
         GRNhjmamidrBIR8JKr8/pgAKrRpJYEdn+tIJf3CX24OLKWGGTvNecW6wZ0o8+GtpfBIV
         N3VWKMvBTIFBQ4mtk2/jNA3Lw0AKnEYfP+3QmhG0H32OMW/wNhPWS0LeXF186IAhsnFW
         HT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794592064; x=1795196864;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Fe7oP9kUiaU4IMzTAKOazExG143SLUu/fzcBtQwA6ZE=;
        b=BokI2YT3HNKKf3qLJ0CHQ6LNHIaXD196L5wv9BAWx4qAR1ECzIwz6gYz1RS47AQoKU
         lxVjVBCXi5uhgtEOHCfTH6ayfOV+11a/1ccWCQ4W03Zbau5K74yYJKgvyBxoqe/WC6CU
         5o64F4PkmXbMQYABHm9cQNggr9S7PIoglToh0NxvlZfOxA33DTMXzlrwJ2duzsKO4vOr
         HXXbNVBs7EoTiTWgwgUYFc/5qgpSEu2dsFDxJhnsoH3XqdmVtQBcJEsZIOrf3Bl9tlU0
         WnLkN92qlp33eyU1ps82nv0/DAIf2sNmvRWanXc+dDauoSWhRPevjCC7vx/q92SxvdxZ
         clMQ==
X-Forwarded-Encrypted: i=1; AL+hErEh5P8JJ96CADfXLIY1ugl8HZJzXJMbc11Rml9SiZdgb4uVge16c29I8WN5jKuy4wSm/qlpxbVtxtG2uy4NUQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/Ey8m7K/U3dWPM/sCLBfuwu3WzDxo7Awr7YpVQ3zwxR8Q7MhSq
	WmJVKz9pYdxDlCojLCgDOLBOFDFUig+wc4EBHMaWrIV7L3WY8DDRmiq6uI/7RV9jqVQXs33+jHk
	0/Eaz8L95YnZMX+hqU0T5aRq1XfSI8PJcRrB02etl8LdSTiJbXuDQdd0W2I+u8qVI30dAO1GpEc
	BuTfWXueIlRa72NFAnbAV57VP7krRs8zUqgOQqMOiUJa6HqeUEcg==
X-Gm-Gg: AYBFou39TDpmw4geEIpfd0KWcwOqiEka/qcU5bVdejZw1/DUq0gBo16NUbVQl6fsa0V
	MYg9DZUaUemFV3+4abz47VrM3nBo+dtxf9u90iAcO7nqEm3euzr+JZSvylCWp3Zsvu3t2FTSoms
	tJRzsPwINETD00LkgRYT2W7pJjUcBehwLLtDaIX9M/K0obfdphtfcpG1Sd3A==
X-Received: by 2002:a05:6a20:d48e:b0:3d3:aec2:4dcd with SMTP id adf61e73a8af0-3f7a68a5208mr3120359637.25.1794592064048;
        Fri, 13 Nov 2026 09:47:44 -0800 (PST)
X-Received: by 2002:a05:6a20:d48e:b0:3d3:aec2:4dcd with SMTP id
 adf61e73a8af0-3f7a68a5208mr3120329637.25.1794592063543; Fri, 13 Nov 2026
 09:47:43 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261019092417.391522-1-leonard@lausen.nl> <20261019092417.391522-2-leonard@lausen.nl>
 <CAPx+jO-9BqNgA1Nx2TiHX=BS6cJMmETepYsiujBCeeb3wPt1bQ@mail.gmail.com> <avYBtK0fyG_0--nN@venus>
In-Reply-To: <avYBtK0fyG_0--nN@venus>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 18:47:32 +0100
X-Gm-Features: AclHuK_J5EuV9dnZIsWrbl-naj0R0vX4a-pEYbeUab3qTKG86s3ZcxdOv5w6zDQ
Message-ID: <CAPx+jO82TGVDRqoz+TN86LVfraVVeNhHBFktTDNvVzM7S8zbng@mail.gmail.com>
Subject: Re: [PATCH 1/2] pmdomain: rockchip: Manage the RK3576 GPU domain supply
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
        Leonard Lausen <leonard@lausen.nl>
Cc: ulfh@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, detlev.casanova@collabora.com,
        finley.xiao@rock-chips.com, zhangqing@rock-chips.com,
        inindev@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, gahing@gahingwoo.com
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfX0UdkmrubNAF+
 REfsZ2sqTcgvVhY82RtPed9XFGx4ekddEY+7cLcXJIrqLzraYQ4RTsy7tt8vgWADmv5VptP6sA1
 9EnbxXYbM2dI3xgfPaslINbDnPyNJiw=
X-Proofpoint-GUID: q5vlFQJDD5SX0hP0HktCt9gXrUF6lnCw
X-Authority-Analysis: v=2.4 cv=N+e8hG9B c=1 sm=1 tr=0 ts=6af74d41 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8 a=9GNsruGHAAAA:8 a=QX4gbG5DAAAA:8
 a=TNRU4YkNAAAA:8 a=mTdHOEkXxLqTN0UqMq0A:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=gf-oSkQAjqHFJRp-GQfY:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=T6RL-YpNOstmnv1gjOTq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA3MCBTYWx0ZWRfX5bVLEIg48zl0
 KVh56yKJBi2lzr4YEbj4htG9PL4smEYKyyqYQoj00hbPtdTBX/GUHYaBnTx3e7z/qU85SuGX3Ms
 M7hT6fLP/zuPFHwYwv015k4sslwTA7zLGC37Dy0f4mSY8kXDBjDqOBiiZU4xBKE2KWrcxBPAW8a
 qxFfLOCBUn5UbL8LHurBGV+MvQVBNtRSCBmwtP4zj1LYf2ovfpDSUu7muoq79lG+T+zyCFRwRrG
 pWJP/z7cnpibOQFaHx+lIog7yxuhUGN4948hshomf9LIFWCnbSBTuOot6pZ+IKEdWbMg/lcGyHd
 j/A0xh72KYOaEhOmQbd7KSaev6ZXfQ3ir6OmX5TBj7HJCTz+Gfj/Iajlz71Ur0BN8W7u62AX1RZ
 B9osKGPUip7ltQHZFnluGFik6ZmZ+ErOS59QOE8fF4vGHQlnn+YfRDqKsXJfWAHQ8Xsnliz1d7A
 SvU1iBlFF3/JyZU/7eA==
X-Proofpoint-ORIG-GUID: q5vlFQJDD5SX0hP0HktCt9gXrUF6lnCw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_05,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_094746_237097_9F4D50E6 
X-CRM114-Status: GOOD (  19.06  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgMTIsIDIwMjYgYXQgNzoxNuKAr1BNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVGh1LCBO
b3YgMTIsIDIwMjYgYXQgMDQ6MTk6NThQTSArMDEwMCwgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPiBP
biBNb24sIE9jdCAxOSwgMjAyNiBhdCAxMToyNOKAr0FNIExlb25hcmQgTGF1c2VuIDxsZW9uYXJk
QGxhdXNlbi5ubD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIHRoZSBOYW5vUGkgTTUsIGJvb3QgaGFu
Z3MgZHVyaW5nIFBhbmZyb3N0IGluaXRpYWxpemF0aW9uLiBCZWZvcmUgdGhpcwo+ID4gPiBmaXgs
IGJvb3RpbmcgcmVxdWlyZWQgYmxhY2tsaXN0aW5nIFBhbmZyb3N0IG9uIHRoZSBrZXJuZWwgY29t
bWFuZCBsaW5lLgo+ID4gPiBMb2FkaW5nIFBhbmZyb3N0IGFmdGVyIGJvb3QgcmVwb3J0cyBhIEdQ
VSBwb3dlci1kb21haW4gYWNrbm93bGVkZ21lbnQKPiA+ID4gdGltZW91dDoKPiA+ID4KPiA+ID4g
ICBmYWlsZWQgdG8gZ2V0IGFjayBvbiBkb21haW4gJ2dwdScsIHZhbD0weDExM2ZmCj4gPiA+Cj4g
PiA+IEFkZCByZWd1bGF0b3Igc3VwcG9ydCB0byB0aGUgUkszNTc2IGRvbWFpbiBkZXNjcmlwdG9y
cyBhbmQgbWFyayB0aGUgR1BVCj4gPiA+IGRvbWFpbiBhcyByZWd1bGF0b3ItZGVwZW5kZW50LiBU
aGlzIGxldHMgdGhlIGV4aXN0aW5nIFJvY2tjaGlwCj4gPiA+IHBvd2VyLWRvbWFpbiByZWd1bGF0
b3IgaGFuZGxpbmcgbWFuYWdlIHRoZSBHUFUgZG9tYWluIHN1cHBseS4KPiA+ID4KPiA+ID4gQSBj
b3JyZXNwb25kaW5nIGRvbWFpbi1zdXBwbHkgcHJvcGVydHkgaXMgbmVlZGVkIGluIHRoZSBib2Fy
ZCBEVC4KPiA+ID4KPiA+ID4gVGhlIHJlZ3VsYXRvci1jYXBhYmxlIGRlc2NyaXB0b3JzIGFyZSBi
YXNlZCBvbiB0aGUgcmVndWxhdG9yIHN1cHBvcnQgaW4KPiA+ID4gSmlheGluZyBIdSdzIHBlbmRp
bmcgUkszNTc2IE5QVSBlbmFibGVtZW50IHNlcmllcywgd2l0aG91dCBpdHMgTlBVIHNldHRsZQo+
ID4gPiBkZWxheSBjaGFuZ2VzLgo+ID4gPgo+ID4gPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNjA5MjQxMDIxMzUuOTIyMTctMTAtZ2FoaW5nQGdhaGluZ3dvby5jb20vCj4g
PiA+IEZpeGVzOiBjZmVlMWI1MDc3NTggKCJwbWRvbWFpbjogcm9ja2NoaXA6IEFkZCBzdXBwb3J0
IGZvciBSSzM1NzYgU29DIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBMYXVzZW4gPGxl
b25hcmRAbGF1c2VuLm5sPgo+ID4KPiA+IFNvIHRoaXMgc2hvdWxkIGJlIGFwcGxpZWQgYXMgYSBm
aXggYW5kIHRhZ2dlZCBmb3Igc3RhYmxlIGtlcm5lbHMsIHJpZ2h0Pwo+Cj4gTWF5YmUgbGlrZSB0
aGlzLCBjb25zaWRlcmluZyBpdCByZXF1aXJlcyByZWd1bGF0b3Igc3VwcG9ydCwgd2hpY2gKPiBs
YW5kZWQgaW4gZGI2ZGYyZTNmYzE2ICgicG1kb21haW46IHJvY2tjaGlwOiBhZGQgcmVndWxhdG9y
Cj4gc3VwcG9ydCIpOgo+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2Ni4xNSsKCkFs
cmlnaHQhCgpBcHBsaWVkIGZvciBmaXhlcyBhbmQgYnkgYWRkaW5nIHRoZSBhYm92ZSBzdGFibGUg
dGFnLCB0aGFua3MhCgpbLi4uXQoKS2luZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
