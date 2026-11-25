Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE8606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 15:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wwmLaekm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Yuo1goiJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kE6lOn18
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h+1eJkO9hVyav7D3qVz5kLHIjKN/q4DwNRSmFwvGxQw=; b=wwmLaekmRK/ids5CI1R0MrYSFU
	HwEyoj9ofHTJxkrG9qQfAjvayD5J8zwQTWIA+wUalaeENpSQGAIfJq278Hta8shsixW1IcuWJ68PA
	A/kmAFuHUWYgeZUzoxd42d6of05bEEGTbxxGpc+hNgGNfmNDGMjSxdZhw9aDoQlsUjRQ3ULSHidrN
	N1og8bc7UN2OjMVBpze1A9X3SKZJIDOmeYW4R3CxvtmN9fOGrnkdhEXTWLwZjcCHFdCmxyWv+X7/g
	K26W8HZoZ2cC8a9oCJcZv5m0iXhhW6+K3J7uwjGi2xoxrr92nqZJII755iS67uKWSPGVoln/LVv6o
	Flze8lmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWErn-0000000ALAF-0XO5;
	Wed, 25 Nov 2026 15:25:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWErP-0000000AL0Q-3PON
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 15:24:45 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6APEME4Z2099763
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:24:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y78ML+3fbUAaF8Rj9Glw+6B9XuZYkePan1Q5MsJuoto=; b=Yuo1goiJ5qmPqUx/
	ZyTezbGG4xC5I59wiMc7Iz9T9+7q7RIcmrIKDNOJsBeSndc6msBmsChfMPPTo05Q
	GMdzgqrGWl3VFhQM1t3yQtSq1UJGeC/ks9BWUf1YbvsMMwp9l5za9uQ3JPLF3hB4
	lKYhuTKLl6jhKOIpkf+wdt9x78mxk3rt/0UJevle0lMv2b222TCemjPLr9DhRDc+
	3+D4JfF1uZcdDzHIdpCcQlbClrQCza7wwsAelxuYA8mmSlvTgO7yM33bxfUNvmbg
	xsl43Qdsj6vbS+cbITAODU4lIO6QVE7raCl0rOFhvdTg9TKE8kkTN/Vh7M75WvPl
	HsCpcQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j61arg9ka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:24:38 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3b45655b428so4883439a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 07:24:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795620278; cv=none;
        d=google.com; s=arc-20260327;
        b=sD82X+0m6N1hxxY04H1OrmwSVrIpPXHsYngcgqXqBFuTD2ECC65IGwm4x6WonQFt7O
         EzUYjWqiqLmU1wkwab6yZ1HDn3Q5hJHiqtv7/3w+Vcq7moGKu9o8s/dct7h+yocgRYXb
         OBAAyHykSaxMhW9RzwhRYssQfL162bkw2JznaaU78y2uEN0lMdL4b2MfiyFMmXdN4hSz
         2TxfWRJxzngZ185FzLUAlscPSKQrtqquQIkQRaxtw5QKvG3BtUSOmso38VVulMSd/HDn
         41aIQkkBidItXN4241X6+EG1/P5C26K025A+9BuKn6uW8RPCRA0viWdgyq2ogROYhhF7
         H9yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y78ML+3fbUAaF8Rj9Glw+6B9XuZYkePan1Q5MsJuoto=;
        fh=QKhs/uIHyIdOaO/R8gHf6p6QSQ8b/NZzjIUGTck1ZLY=;
        b=IX2CQcr+G7B8nNOmyNR0Tjyk9it5+0WowRbsad0Gix9yRnf8CuLBWkPxQCGPPKvjcA
         +OelI0TIW2JdxznlX9ITWVEoyMhcF/YTsUWOp9ymekpHLK/Dsk5dY5uzWJc/g9slxut0
         JPrB1lAjRBWwZUbBMIy8aTNhFF7RZL6uPlEY/TDflWYYUE8psbGMs1cHK6hSU2MmF/d1
         PgFT+B6xkjXde62U7sSKIQ62aOv5QrIlKtaXcnbsnTxLuqvYifXM008RI0IHlugiGP+r
         johfGCDq8QjKk4250Ot6F6myOknDDvQv6iNc+q33jVlIkBhllNX8KkZz2bYUFOidHWSt
         U+UQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795620278; x=1796225078; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Y78ML+3fbUAaF8Rj9Glw+6B9XuZYkePan1Q5MsJuoto=;
        b=kE6lOn18qbLhhtQvRXauEff6Xn3XcRjMXN2YnGo0vJOo0jcwbQZMoqpb+LwGgV+gJr
         FrlK3tA4Plg0hs/FY0ZkgLRziE5r7OVmKnKuB0IBOjxODUN3Y5qb6C19brytHKQHS2sR
         Nh+i9DcautmTIlllt7xYaswcOMsHjwI+bwAnd7pFPnsruer/5HTgvcBWgUk4nYIFICl5
         YEdydgDF45UHVIpH+2udKmaujq/6ac71yR/5UgAHMCgZe7JUCrsPPKskpP9XFfIxEJ/5
         jRW4hUshlONS64lIoGhvravK2Bcv5yJSS4+V9yQqaBLjoVF/PIykaWB2BOa9awOr+w72
         pu0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795620278; x=1796225078;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y78ML+3fbUAaF8Rj9Glw+6B9XuZYkePan1Q5MsJuoto=;
        b=HLdBXzj9ITTvj6YyDQoYnUKkwpaedE/Z90TqWGl/xnpGXN26kuQHzeyZCPkYqLKXsE
         RlJviAyexmREpGPzK+k5tyfTRWfSfNoufcQea3eoNt7jedcAjYzS2Y1T8FiOADi1kxYw
         GEZVC1aoOA/q4A3HRlVuQCueFHNtnDHIc22+9yhKGXPdOJrCqtIHpwCSDw8IFrzlP1V/
         ZM91x2PsbmuBqjnQsGYHkxLKtlNFhWNT7nXQQvFaVLBH3IhfJMZ395bwYL/tIfWBxvpX
         0sgVajkgARBLVZqviu4AiN85/a7bpQmPWQb1jnnToNpv070/ri4tiYAP4uc2Pf4YVl8t
         2l/Q==
X-Forwarded-Encrypted: i=1; AL+hErFWHx4/VYlbaiFFnmgWNKF2/1f1POkx2vyq+NHmLtKin2NWdgi93oMypT9Oa8nHrKW1ga50u3++ephqC/b1vw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8OnHEK3dDw++M3tAHZB2J5REkH7OQB2stvxLqMzxsYenDou+25
	ADHS91lUXxt9wJsTfl2AdjdlAlHWuYlZOufqxVBdaXukZaogmTkVNI6sjmb9HtgW4v8xnY+ksjw
	uTokRIkhxG+n736dh8o4wvPCe/xAAlAe7UnFtOMn2pnJ9QWsDb/mYZXsK81+bfG0vGPBvqKKcKX
	9l4lTK2B3I1H4CGYlChL2PUp1O3zF4dtWREmxaTYEQQxGhpjtm/A==
X-Gm-Gg: AZFdTZeNymQIfIOSDbSup6wZaylJBaaMkXOzhUku/i70xBrcm59g6hn/HQZEAVUnSyl
	wma624AJI0+50eN3PqNyGFulmEJaWlP0JQXavvEgIva1QYbFqXx8c7iv43qY6RW+POLjk7KnRgm
	lj4p8chpcgLCUTrOehPyBun2DeeDFABlVYTZV1R1xovddVw9r0ZqidYwWUBQ==
X-Received: by 2002:a17:90b:39a3:b0:3a0:9c9d:eb18 with SMTP id 98e67ed59e1d1-3b41cb20e66mr19332076a91.54.1795620277298;
        Wed, 25 Nov 2026 07:24:37 -0800 (PST)
X-Received: by 2002:a17:90b:39a3:b0:3a0:9c9d:eb18 with SMTP id
 98e67ed59e1d1-3b41cb20e66mr19332017a91.54.1795620276536; Wed, 25 Nov 2026
 07:24:36 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261118-fix-rockchip-pmdomain-power-on-rollback-v2-1-3e4e93a19996@qq.com>
In-Reply-To: <20261118-fix-rockchip-pmdomain-power-on-rollback-v2-1-3e4e93a19996@qq.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 16:24:25 +0100
X-Gm-Features: Aa3M54o8dqLPD5uB-WeLwhOdO6CQFYha7MYFNep3S3olWqjH0jSGnIbrJ4DpKTk
Message-ID: <CAPx+jO8hTrAAoZgJKK91yF9z3CaiB3w4DRvvgDz=Zm_zxU6g6Q@mail.gmail.com>
Subject: Re: [PATCH v2] pmdomain: rockchip: Roll back power-on when leaving
 idle fails
To: 1579567540@qq.com
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Proofpoint-GUID: nNc0Ndvf4bF2XXlY6U7qHR40pvfhSSe9
X-Authority-Analysis: v=2.4 cv=OIOyTiaB c=1 sm=1 tr=0 ts=6b06fdb6 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=c92rfblmAAAA:8 a=dZbOZ2KzAAAA:8 a=bC-a23v3AAAA:8
 a=VwQbUJbxAAAA:8 a=mFHk9SUb-_LhEKcCAXMA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=GvGzcOZaWPEFPQC_NcjD:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: nNc0Ndvf4bF2XXlY6U7qHR40pvfhSSe9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA2MSBTYWx0ZWRfXwkPKY7R6UTGu
 fn7ye3Cik8v6fH/YaVk55A7MIES7sjoMBgHgIfhCZ0RlXQgTFBzpZpPr1u45Dpi/uJ/LWNipXmw
 QEBhFxxmBXWm3xfderff5r98RkUexOs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA2MSBTYWx0ZWRfX44y0GHKU2ydK
 1D95otGOK3yHr1qp34B6OpjppNAhDOEslC53GMDNSaGHjRq+cWEYLXguMx8QR1S3fi9H5p4Wa1N
 /ZbzgZQOQMCIOcf7pEwhSClMsYwUElJEaRS4nQ8U9u3aqq+Nkg8W61GfxQ0BkkmOUJtvPXo3Jtt
 jKZKuDZWE8jltYVBPaQpXXRy8ErHaz0JUGuY6AOG5+jIHmQ8gZDxd0okK2W9AKEldOqwtlL/yzo
 RairZMQ7orNIjaJnju3FbeUTw9T5DcYiwfTqYyipuW94u1Gq36pPbtBPUjXWvB/EKlBGjBJn/81
 IPAasH37WH+xT2MkYtmCEbKU8riu0VqHw/qPFrku/Cw4Y7iV1wrlrHJGe1qKMrKwAlOYMuFfHb0
 sTPcT5MOiIQ/Clxl5xU3qPXZre6SRJ2JV1HokJhqcvsub0IXvFz/LxE7Oe2vRnpLiIh1bSkwXdK
 pkkMkSgkeKR03dBvAkg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_072439_968987_7A00DD6E 
X-CRM114-Status: GOOD (  34.10  )
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

T24gV2VkLCBOb3YgMTgsIDIwMjYgYXQgMTA6MDPigK9BTSBDdW5oYW8gTHUgdmlhIEI0IFJlbGF5
CjxkZXZudWxsKzE1Nzk1Njc1NDAucXEuY29tQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRnJvbTog
Q3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPgo+IFdoZW4gTklVIGlkbGUgZXhpdCBmYWls
cyBhZnRlciBQTVUgcG93ZXItb24sIGNsb2NrcyBhbmQgdGhlIHJlZ3VsYXRvcgo+IHJlZmVyZW5j
ZSBhcmUgcmVsZWFzZWQgd2hpbGUgdGhlIGRvbWFpbiByZW1haW5zIHBvd2VyZWQuIGdlbnBkIHRy
ZWF0cwo+IGl0IGFzIG9mZiBhbmQgbWF5IHBvd2VyIG9mZiBpdHMgcGFyZW50cy4KPgo+IFJlcXVl
c3QgaWRsZSBhZ2FpbiBhbmQsIGlmIHN1Y2Nlc3NmdWwsIHVzZSB0aGUgbG93LWxldmVsIHBvd2Vy
LW9mZiBwYXRoCj4gYmVmb3JlIHJlbGVhc2luZyByZXNvdXJjZXMuIFRoaXMgcHJlc2VydmVzIHNh
dmVkIFFvUyBhbmQgbm90aWZpZXMKPiBmaXJtd2FyZSB3aGlsZSByZXRhaW5pbmcgdGhlIG9yaWdp
bmFsIGVycm9yLgo+Cj4gSWYgcm9sbGJhY2sgZmFpbHMsIHJlc291cmNlcyBhcmUgc3RpbGwgcmVs
ZWFzZWQgYW5kIGdlbnBkIG1heSBwb3dlciBvZmYKPiB0aGUgcGFyZW50cy4KPgo+IEZpeGVzOiA2
YjI2OTBkZjNmMDMgKCJwbWRvbWFpbjogcm9ja2NoaXA6IGZpeCByb2NrY2hpcF9wZF9wb3dlciBl
cnJvciBoYW5kbGluZyIpCj4gU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFx
LmNvbT4KCkFwcGxpZWQgZm9yIGZpeGVzIGFuZCBieSBhZGRpbmcgYSBzdGFibGUgdGFnLCB0aGFu
a3MhCgpLaW5kIHJlZ2FyZHMKVWZmZQoKCj4gLS0tCj4gVGhpcyBwcmUtZXhpc3RpbmcgaWRsZS1l
eGl0IGZhaWx1cmUgY2FzZSB3YXMgcmVwb3J0ZWQgYnkgU2FzaGlrbyBBSQo+IGR1cmluZyB0aGUg
UkszNTcyIG1haW5saW5pbmcgd29yazoKPiBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjEwMjItYWRkLWJvYXJkLW9rMzU3Mi1jLXYxLTAtMGIwZmQ4NWEzMWVlQHFxLmNvbT9wYXJ0
PTEwCj4KPiBJZiBsZWF2aW5nIE5JVSBpZGxlIGZhaWxzIGFmdGVyIFBNVSBwb3dlci1vbiwgdGhl
IGRvbWFpbiByZW1haW5zIHBvd2VyZWQKPiB3aGlsZSBnZW5wZCB0cmVhdHMgaXQgYXMgb2ZmLiBU
aGUgZXJyb3IgcGF0aCByZWxlYXNlcyB0aGUgY2xvY2tzIGFuZAo+IHJlZ3VsYXRvciByZWZlcmVu
Y2UsIGFuZCBnZW5wZCBtYXkgcG93ZXIgb2ZmIHRoZSBwYXJlbnQgZG9tYWlucy4KPgo+IFRoaXMg
cGF0Y2ggcmVxdWVzdHMgaWRsZSBhZ2FpbiBhbmQsIGlmIHN1Y2Nlc3NmdWwsIHBvd2VycyB0aGUg
ZG9tYWluCj4gb2ZmIGJlZm9yZSByZWxlYXNpbmcgdGhvc2UgcmVzb3VyY2VzLiBJdCBwcmVzZXJ2
ZXMgdGhlIHNhdmVkIFFvUyBzdGF0ZQo+IGFuZCBvcmlnaW5hbCBlcnJvciwgYW5kIHVzZXMgdGhl
IGxvdy1sZXZlbCBwYXRoIHRvIG5vdGlmeSBmaXJtd2FyZS4KPgo+IFZhbGlkYXRpb246Cj4KPiAt
IEFsbCA0OCBob3N0IHNpbXVsYXRpb25zIHBhc3NlZCwgY292ZXJpbmcgcG93ZXIgY3ljbGVzLCBp
ZGxlLWV4aXQgYW5kCj4gICByb2xsYmFjayBmYWlsdXJlcywgUW9TIHByZXNlcnZhdGlvbiBhbmQg
ZXJyb3IgcHJvcGFnYXRpb24uIE5vIHNhbml0aXplcgo+ICAgZmluZGluZ3MuCj4KPiAtIEhhcmR3
YXJlIHRlc3Rpbmcgb24gT0szNTcyLUM6IDIwIHBhdGNoZWQgYW5kIDUwIHVucGF0Y2hlZCBOVk0x
IHBvd2VyCj4gICBjeWNsZXMgcGFzc2VkLiBSZXF1ZXN0LXdyaXRlIGluamVjdGlvbiBjYXVzZWQg
bmF0aXZlIGlkbGUtZXhpdCBwb2xsaW5nCj4gICB0aW1lb3V0cy4gVGhlIGZpeCBwb3dlcmVkIHRo
ZSBkb21haW4gb2ZmIGluIDMvMyBjYXNlczsgdGhlIG9yaWdpbmFsCj4gICBkcml2ZXIgbGVmdCBp
dCBPTi4gUW9TIGFuZCB0aGUgb3JpZ2luYWwgZXJyb3Igd2VyZSBwcmVzZXJ2ZWQsIGFuZAo+ICAg
cmV0cmllcyBzdWNjZWVkZWQgYWZ0ZXIgcmVtb3ZpbmcgdGhlIGluamVjdGlvbi4KPgo+IFBlcnNp
c3RlbnQgcm9sbGJhY2sgaWRsZSBhbmQgcG93ZXItb2ZmIHRpbWVvdXRzIHdlcmUgYWxzbyB0ZXN0
ZWQ6Cj4gcmVzb3VyY2VzIHdlcmUgc3RpbGwgcmVsZWFzZWQgd2l0aCB0aGUgZG9tYWluIE9OIGFu
ZCBnZW5wZCBPRkYuIFRoZXNlCj4gZmFpbHVyZSBwYXRocyByZW1haW4gdW5yZXNvbHZlZCwgYW5k
IGdlbnBkIG1heSBzdGlsbCBwb3dlciBvZmYgdGhlIHBhcmVudHMuCj4KPiBBSSBhc3Npc3RhbmNl
Ogo+Cj4gLSBDb2RleCAvIERlZXBTZWVrIFY0LjEgRmxhc2ggd2VyZSB1c2VkIGZvcjoKPiAgIC0g
UmV2aWV3aW5nIGFuZCBhZGp1c3RpbmcgY29kZSBzdHlsZSB0byBmb2xsb3cgY29tbXVuaXR5IGNv
bnZlbnRpb25zCj4gICAtIEF1dG9tYXRpbmcgdGVzdHMKPiAgIC0gQ29sbGVjdGluZyBkYXRhCj4g
LS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFJlYmFzZSBvbnRvIHRoZSBuZXh0IGJyYW5jaCBvZiBV
bGYgSGFuc3NvbidzIGxpbnV4LXBtLmdpdCB0cmVlLgo+IC0gTGluayB0byB2MToKPiAgIGh0dHBz
Oi8vcGF0Y2gubXNnaWQubGluay8yMDI2MTEwMS1maXgtcm9ja2NoaXAtcG1kb21haW4tcG93ZXIt
b24tcm9sbGJhY2stdjEtMS01OWE0NTc4M2UzM2VAcXEuY29tCj4gLS0tCj4gIGRyaXZlcnMvcG1k
b21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9k
cml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IDZhYmVmNjBhNWI0
Yy4uMmMwMjE3ODQzMTZhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAv
cG0tZG9tYWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5z
LmMKPiBAQCAtNjQ4LDYgKzY0OCwyOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RvX3BtdV9zZXRf
cG93ZXJfZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLAo+ICAgICAgICAgcmV0
dXJuIDA7Cj4gIH0KPgo+ICsvKgo+ICsgKiBUaGUgY2FsbGVyIGhvbGRzIHRoZSBQTVUgbG9jayBh
bmQgdHJhbnNpdGlvbiByZXNvdXJjZXMuIFVzZSB0aGUgbG93LWxldmVsCj4gKyAqIHBvd2VyLW9m
ZiBwYXRoIHRvIGF2b2lkIG92ZXJ3cml0aW5nIHRoZSBzYXZlZCBRb1Mgc3RhdGUuCj4gKyAqLwo+
ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wZF9wb3dlcl9vbl9yb2xsYmFjayhzdHJ1Y3Qgcm9ja2No
aXBfcG1fZG9tYWluICpwZCkKPiArewo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBy
ZXQgPSByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVzdChwZCwgdHJ1ZSk7Cj4gKyAgICAgICBp
ZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBkLT5wbXUtPmRldiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIGlkbGUgZG9tYWluICclcycgb24gcm9s
bGJhY2s6ICVkXG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBkLT5nZW5wZC5uYW1lLCBy
ZXQpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAg
cmV0ID0gcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4ocGQsIGZhbHNlKTsKPiArICAg
ICAgIGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBkLT5wbXUtPmRldiwK
PiArICAgICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIHBvd2VyIG9mZiBkb21haW4gJyVz
JyBvbiByb2xsYmFjazogJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGQtPmdlbnBk
Lm5hbWUsIHJldCk7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGRfcG93ZXIoc3Ry
dWN0IHJvY2tjaGlwX3BtX2RvbWFpbiAqcGQsIGJvb2wgcG93ZXJfb24pCj4gIHsKPiAgICAgICAg
IHN0cnVjdCByb2NrY2hpcF9wbXUgKnBtdSA9IHBkLT5wbXU7Cj4gQEAgLTY4Miw4ICs3MDUsMTAg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWlu
ICpwZCwgYm9vbCBwb3dlcl9vbikKPiAgICAgICAgIGlmIChwb3dlcl9vbikgewo+ICAgICAgICAg
ICAgICAgICAvKiBpZiBwb3dlcmluZyB1cCwgbGVhdmUgaWRsZSBtb2RlICovCj4gICAgICAgICAg
ICAgICAgIHJldCA9IHJvY2tjaGlwX3BtdV9zZXRfaWRsZV9yZXF1ZXN0KHBkLCBmYWxzZSk7Cj4g
LSAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwg
MCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwX3BkX3Bvd2VyX29uX3JvbGxi
YWNrKHBkKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPiArICAgICAgICAg
ICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIHJvY2tjaGlwX3BtdV9yZXN0b3JlX3FvcyhwZCk7
Cj4gICAgICAgICB9Cj4KPiAtLS0KPiBiYXNlLWNvbW1pdDogNmY1YzhlYzkzMDJjNWFkODkwNGRi
ZGZlOGNmMmE1MzhmZjgzNTU3Mgo+IGNoYW5nZS1pZDogMjAyNjExMDEtZml4LXJvY2tjaGlwLXBt
ZG9tYWluLXBvd2VyLW9uLXJvbGxiYWNrLWMxMWUxMDE0ZWYxMQo+Cj4gQmVzdCByZWdhcmRzLAo+
IC0tCj4gQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
