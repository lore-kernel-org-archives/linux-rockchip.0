Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AE4606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IJiYLGt+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RClXlg3b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=L6GUlOoe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XyGe0Yf5k8b1kGmb/6ID8WXjIpvR8IYvssvqVOUKGAk=; b=IJiYLGt+yra+Xjslpiu8gXRhOQ
	uEJwr6Ph4mfjg8hPdVDd7jI44QlDgORLJ7Df1XtA8vFhc8q0rBX1EE+71Cymdw0Ix4JrWpD/O0bDG
	N5weXF1Zwx4eHcCAYXMX+3o0UCJGiTzMoz6k4LtNgrkOALx3GmyN55rmVHrO9HJ02+NwEKZhTYEvc
	u+aeADpPphFlUBKTXpKBrtwTUphvd0VmiPx48CxtdzggAqjDKNKUv8clXPxcs2VM73MTcUmQUMRxJ
	Wacz3alf5tRiKX3r+t7Fd1Vqs+PP6+h4+DYG83Od2ZJmV1ZF7Vrde2G3+74kSJcZFIengUx2b3UaH
	seDzPXKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWnl-00000004B9I-43Eo;
	Mon, 23 Nov 2026 16:21:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWnI-00000004B1k-3FPe
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 16:21:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ANGGpn22769015
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 16:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/NnFP+NSq0yyiHjtLtbCC56s3jL1Oe1DEEGxccAA6Kk=; b=RClXlg3bWSFVwFHL
	QIIvMS4osiWGN6plNZ3HSiPYDwk15ExQT2v5rJk2V0p/KYwCTbk+5E/ggifEOVMx
	0VCoGsGrILpuAIPnr6oaLHg2vAOcMH5jtYG04gNG5SMrFgRqAIvwKsIaWxfssHQ7
	06BTXyxsS1ECvl1qEoKkVu4K3OFk0diTyq2HBMVpvObIIc7NSrWyufmYPo3t5ex3
	2CvvJjAKatokjGr0b6B2EFfiVyVw/ArN1NPzw6FQzL5tTsrs/pY3Ke3MDuSypnxs
	3VG5iH0OtjCFw33UpDHw7fsnMMohUbqeG00xpa1hwVanubq3qlrPgoSHh4gRtRhp
	0gdbVg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j4g1pa9t2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 16:21:28 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc1ca15334cso3174626a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 08:21:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795450888; cv=none;
        d=google.com; s=arc-20260327;
        b=RlMWnMt5qhRIrXQWYledUjvuCdDx4Cvyn/cuup2Q35YcqenIPxFo2PrpbOFws1yS0h
         vxeSht3lZWmEqe69JgY+peXzR9+iCfoDE2lpJVouCE4cjmVsB3m5cx35nc3Bjiu9RRwx
         lbbXQv9ckYJ87Hgii/5i+Zrdxj2AUzwzL8/mQtj4/vejlw4JKpF9lZsIacB5IajX6R9U
         EXhP+d3btmNEVbLy6hr3o5bOEvEiuBrUmTZSWyglvY/vaDJB0MnarAZXau7awcmD6Dwl
         AJJdShxfFwb1zFr+LH+cVAkQDlAa35O4gYXXE0Zys9GbXCjEmCj3hXiIM7sRn3IqWM0l
         Eezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/NnFP+NSq0yyiHjtLtbCC56s3jL1Oe1DEEGxccAA6Kk=;
        fh=tRkl3lglvsmOQ7qrKLP+SJ7kmaUg1dOxRY+wrpKjlnI=;
        b=QQXrs6EpAGTx2PZFe8xBNRz8IT5giwD/xh+3RIOx3il+ExYBCLb76ednGuiKFU5cta
         Z7bDXMjNLrQAeSmfnDQ5sncvUrnNJKZeRTiYGR2RGmyiVyPYOwNt+kL+mvH2YQTF3vIH
         AMaFrKpQINLMg3l8sSJE6godgCU82m4eBRWpRYeZUnnqxW9/XP/GSOI89TO4D4YQ7ZOE
         ro0MLXXTg0HG8gJVqMYcIPm4g87MycxdO/fq3YTq5F8uHJFBVNgl2KCDO69AfK9cvIfy
         jDqLw3dhueuWK4tb69drtqEUQyveCFc+y6jhmPuf33pmh88EsmgDqCY/1uMxmgoO6Lwm
         rUdg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795450888; x=1796055688; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/NnFP+NSq0yyiHjtLtbCC56s3jL1Oe1DEEGxccAA6Kk=;
        b=L6GUlOoe3uuIhGa8tDXQNjSy9H1xQo49NOfhZQswLbSsV4c53LXdFqMrDBWiDxZ8GK
         X30wl6OSWrGW27+idJmDorVv4Zo1/hoNlucny8Zv/85/DNNq4MoIwoKAf8gkW9Emd422
         5jR2frmNC9zV9aLXvs1LRHbZTYGeTluuLg1MnLpnP1EH7deLU2NKi4rE01aMggYenbSj
         edyFBYs77aGBCvI13JtQdKyAcfrE4+UbUUfY2LyM1e8mGjR3xZtYXLAk4tx9Sm2G+bS0
         qA1oGPn2AeffPYsBSqCH2SP31VNmj2PvH/1HWYf4WwQQRx03yOKtFepsVcfubvJagaea
         9GfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795450888; x=1796055688;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/NnFP+NSq0yyiHjtLtbCC56s3jL1Oe1DEEGxccAA6Kk=;
        b=OMkrjaCpjMF+RlpMyWTLnJCYKhPfPFQ+cM11/R+S/gPtVRl+IuxeVyUXcRR+65DbCc
         M3u53DdUt+VziH9x5gbLQnS41+gvsnl65EvoCFnLO+wRfh6ixygVGJginpdsRpyGVqUz
         BuixMjIOgAjNS0ZMQdYNa+jR6z2R0Iji2rttUHZ2GIix1iMGQPTUaBcktYu+4hbV4dF7
         o+khGXVW6uAjO5Y4Fmzfq1x+nSnVU0r3betXMicqDYX773Umz1N78kT+EFq/CIZJM7na
         ejOmZrFM7QNhqnkthcSx9X5L4P4J4Ws4K6veHxg4AetuvdF5mfT7RxUF2QYUa37cw32P
         +J+w==
X-Forwarded-Encrypted: i=1; AL+hErFlMjimqA2pVTGnllVyQhn3yZ1JeA+MhXSCGueyUi2Tu9FCScDvDf38iw23EIVfneRN8TMi90zHo64D87U0mQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8NdZuQq78Lt3wyIMLJ2fUt5yVVGSFXZVYqi30wu7sQkDACCGap
	40sXA2q5/mL0yUTMbVKTtQWGNPahL2XcXbgIZNs/tQHcKzl7FWCWZxU1hloJAiec7OFGgsNLdJM
	VDVrfRuFf9l1G58zzWZtH58ybH/2I4Jra6IUjXjIJvITgUIUJrtQJEVYLGoiOyYSAJkdpVAzp5Q
	uXG1504AjSskGi56z801vUjREmQyAqxXMBE3aPU5OntiefU6ZIjg==
X-Gm-Gg: AZFdTZeWja9UdhC8J8XQuE3pwcBWmERkiwuTKRfia94LMQkDAPUdOge3KU3bSFMWsO4
	1ZXthN07vpwOJSrdYS4K0aR5/J33SqzEubs9vxsFFB5FAiXbbYZBDoKUH+HYB+kfo+zHMHCBI+O
	8Wb+bD2A26mITGSUan2ZbIcCe9qep0i4EWv1m/2NXadv2H1gfbVWeLFw+AfZjZ4IyssfoGDUmP4
	yuHlrmtBW9kBMcL
X-Received: by 2002:a05:6a20:7c20:b0:3de:557e:5ea6 with SMTP id adf61e73a8af0-40283cbd05cmr5442948637.27.1795450887600;
        Mon, 23 Nov 2026 08:21:27 -0800 (PST)
X-Received: by 2002:a05:6a20:7c20:b0:3de:557e:5ea6 with SMTP id
 adf61e73a8af0-40283cbd05cmr5442928637.27.1795450887142; Mon, 23 Nov 2026
 08:21:27 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <cover.1794615323.git.gahing@gahingwoo.com>
In-Reply-To: <cover.1794615323.git.gahing@gahingwoo.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Mon, 23 Nov 2026 17:21:13 +0100
X-Gm-Features: Aa3M54rrQb2REYtBcbw06BpA4JyTdY7S7pcOgeKDB2ZGguRFDoBBypEfHT-AJbA
Message-ID: <CAPx+jO_F5T8zW3D9CNjH0W5pLLM9srGovUmqvVeWL2Z8dDDo+Q@mail.gmail.com>
Subject: Re: [PATCH v17 0/3] pmdomain: rockchip: RK3576 NPU domain supply and
 settle delay
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: ulfh@kernel.org, heiko@sntech.de, finley.xiao@rock-chips.com,
        shawn.lin@rock-chips.com, sebastian.reichel@collabora.com,
        vlwwwwww@gmail.com, leonard@lausen.nl, abel.vesa@oss.qualcomm.com,
        tomeu@tomeuvizoso.net, linux-pm@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIzMDA2NSBTYWx0ZWRfX3sVkVSdDbjg3
 fqyC3Z8b5f3NzDNi1PGEWZSNGRwcRf95MOgEakSWhrPgm8J3SvY9IWdDbZ/P6AikMLXLCmdFO/z
 ggkt7lGIcdXt5jwYmlpsc28v/moZ6Hwvno5G8bN9B13PKUSIwxLVESDqNoYrhTuEM5F7/pJkP58
 RqecfTJFW5fQDYbAZYfa54uptkzeRs40d9a+65sBSbGxAqXNVYisO9+hsE7CE5jfqcfa9aw5aQh
 r5UUJrOBDfxxES205vIfpARmZIMTr9veR1PwMs6wTM7CQ9/jV8d2NgWoHru1tlkXT9mva6BjhYe
 qMG4i2vvyrrxZu7KDEDQIsd5bKbJ/kWVBGTGmn/N9sM8cdJ+BggT7qqjniAvc40IwUYpsP8WfzS
 kaE4m+8iM1KSZBkBsZAbcUteTp1rUSeVxhbaA4ibFDzvXuhdr2uMdvdiGySfogPYjS0w7nBJyFW
 YJ0lMa4zyCbD5dJVEcg==
X-Authority-Analysis: v=2.4 cv=AeIkjHXG c=1 sm=1 tr=0 ts=6b046808 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=9GNsruGHAAAA:8
 a=NEAV23lmAAAA:8 a=HctJ1lBftkvV2UQOCVsA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=gf-oSkQAjqHFJRp-GQfY:22
X-Proofpoint-GUID: v5p_7s5WqUjsUFOBiszbvFgW1cHVF24j
X-Proofpoint-ORIG-GUID: v5p_7s5WqUjsUFOBiszbvFgW1cHVF24j
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIzMDA2NSBTYWx0ZWRfX0LDJHyGPbsJK
 NroBOJIockxKwBoK3sQ3mmK2piDvGzZh0CX9m9Mals3YnbtHMVsKqYycUxtWNO2o0DcweuOi5En
 V+Iv5TPpUpbLcEvvYdUR1F1jZbD1tOw=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-23_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 phishscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611230065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_082128_840640_FFFBE973 
X-CRM114-Status: GOOD (  23.58  )
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0LCBOb3YgMTQsIDIwMjYgYXQgNDowNeKAr0FNIEppYXhpbmcgSHUgPGdhaGluZ0BnYWhp
bmd3b28uY29tPiB3cm90ZToKPgo+IFRoaXMgc2VyaWVzIGZpeGVzIGhvdyB0aGUgUm9ja2NoaXAg
cG93ZXItZG9tYWluIGRyaXZlciBpbml0aWFsaXplcwo+IGRvbWFpbnMgdGhhdCBuZWVkIGEgcmVn
dWxhdG9yLCBhZGRzIHByb3BlciByZWd1bGF0b3IgaGFuZGxpbmcgZm9yIHRoZQo+IFJLMzU3NiBO
UFUgcG93ZXIgZG9tYWluLCBhbmQgYWRkcyBhIHNldHRsZSB3YWl0IGFmdGVyIHBvd2VyLW9uIGZv
ciBzb21lCj4gUkszNTc2IHBvd2VyIGRvbWFpbnMuCj4KPiBUaGVzZSBhcmUgdGhlIHBtZG9tYWlu
IHBhdGNoZXMgb2YgdGhlIFJLMzU3NiBOUFUgc2VyaWVzLCBzcGxpdCBvdXQgYW5kCj4gcmViYXNl
ZCBvbiBVbGYncyBuZXh0LCBhcyBVbGYgYXNrZWQgYWZ0ZXIgZHJvcHBpbmcgdjE1IDcsIDkgYW5k
IDEwOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQVB4K2pPLUtLdmdSUzBici0zUUdo
Nkp0NGVmV0orQTZZb1JaS0ZWX2JjZkIrOHNtNndAbWFpbC5nbWFpbC5jb20vCgpQYXRjaCAxIGFw
cGxpZWQgZm9yIGZpeGVzIGFuZCBwYXRjaDIgYW5kIHBhdGNoMyBmb3IgbmV4dCwgdGhhbmtzIQoK
S2luZCByZWdhcmRzClVmZmUKCgo+Cj4gVGhlIGFjY2VsL3JvY2tldCBhbmQgRFQgcGF0Y2hlcyBm
b2xsb3cgYXMgdGhlaXIgb3duIHYxNzoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292
ZXIuMTc5NDYxNTMyNC5naXQuZ2FoaW5nQGdhaGluZ3dvby5jb20vCj4KPiBCYXNlZCBvbjogVWxm
J3MgbmV4dCAoODQ0YTEzMDEwYjBiKQo+Cj4gQ2hhbmdlcyBpbiB2MTc6Cj4KPiAtIFJlb3JnYW5p
emVkIHRoZSBzZXJpZXMgYXMgVWxmIGFza2VkLCBhbmQgc3BsaXQgdGhlIGZpeCBmb3IgcmVndWxh
dG9yCj4gICBkb21haW4gaW5pdGlhbGl6YXRpb24gZnJvbSB0aGUgUkszNTc2IE5QVSByZWd1bGF0
b3IgaGFuZGxpbmcuCj4gLSBGb2xsb3dpbmcgRmlubGV5IFhpYW8ncyAoUm9ja2NoaXApIHJldmll
dyBvZiB2MTYsIHRoZSBSSzM1NzYgZGVsYXkgaXMKPiAgIG5vdyAxNSB1cyBvbiBOUFVUT1AgYW5k
IFZPUCBvbmx5Lgo+IC0gRml4ZWQgdGhlIHN1YmRvbWFpbnMgb2YgYSByZWd1bGF0b3IgZG9tYWlu
IGJlaW5nIGxlZnQgaW4gdGhlIHdyb25nCj4gICBzdGF0ZSBhdCBwcm9iZSwgcmVwb3J0ZWQgYnkg
VmxhZGltaXIgQmVseSAoMS8zKS4KPiAtIFRoZSBSSzM1NzYgTlBVIHBvd2VyIGRvbWFpbiB1c2Vz
IERPTUFJTl9SSzM1NzZfUiwgdGhlIHNhbWUgbWFjcm8KPiAgIExlb25hcmQgTGF1c2VuJ3MgR1BV
IHBhdGNoIGFkZGVkICgyLzMpLgo+Cj4gVGVzdGluZzoKPgo+IFRlc3RlZCBvbiBhIFJhZHhhIFJP
Q0sgNEQsIHdpdGggdGhlc2UgcGF0Y2hlcyBhbmQgdGhlIHJlc3Qgb2YgdjE3Cj4gYmFja3BvcnRl
ZCB0byBBcm1iaWFuJ3MgNy4zIGtlcm5lbDoKPgo+IC0gV2l0aCB0aGUgTlBVIGRpc2FibGVkIGlu
IHRoZSBEVCwgTlBVVE9QLCBOUFUwIGFuZCBOUFUxIGFyZSBzd2l0Y2hlZAo+ICAgb2ZmIGFuZCBp
ZGxlZCBhdCBwcm9iZSBvbiBldmVyeSBib290ICgxNiBib290cykuIFdpdGhvdXQgMS8zLCBhbGwg
MTQKPiAgIGJvb3RzIGxlZnQgdGhlbSBvbiwgYW5kIG9uZSBvZiB0aGVtIGh1bmcuCj4gLSBXaXRo
IHRoZSBOUFUgZW5hYmxlZCwgMzAgTlBVIHBvd2VyLXVwcyBhZnRlciBhIHdhcm0gcmVib290IGFu
ZCAzMAo+ICAgYWZ0ZXIgYSBjb2xkIHBvd2VyLW9uLCB3aXRoIGlkZW50aWNhbCBvdXRwdXQgYW5k
IG5vIFNFcnJvci4KPgo+IExvZ3M6IGh0dHBzOi8vZ2l0aHViLmNvbS9nYWhpbmd3b28vbGludXgt
cmszNTc2LW5wdS90cmVlL21haW4vYm9hcmQtbG9ncwo+Cj4gVGFnIGNoYW5nZXM6Cj4KPiAtIDMv
MyBjaGFuZ2VzIHRoZSBkZWxheSB2YWx1ZXMgb2YgdGhlIHYxNiBwYXRjaCBhbmQgaXMgb3JnYW5p
emVkCj4gICBkaWZmZXJlbnRseSwgc28gSSd2ZSBkcm9wcGVkIEFiZWwncyBhbmQgSGVpa28ncyBS
ZXZpZXdlZC1ieS4gQWJlbCwKPiAgIEhlaWtvLCBjb3VsZCB5b3UgdGFrZSBhbm90aGVyIGxvb2s/
Cj4KPiBKaWF4aW5nIEh1ICgzKToKPiAgIHBtZG9tYWluOiByb2NrY2hpcDogc3dpdGNoIG9mZiB0
aGUgc3ViZG9tYWlucyBvZiBhIHJlZ3VsYXRvciBkb21haW4gYXQKPiAgICAgcHJvYmUKPiAgIHBt
ZG9tYWluOiByb2NrY2hpcDogbWFuYWdlIHRoZSBSSzM1NzYgTlBVIGRvbWFpbiBzdXBwbHkKPiAg
IHBtZG9tYWluOiByb2NrY2hpcDogc2V0dGxlIFJLMzU3NiBOUFVUT1AgYW5kIFZPUCBhZnRlciBw
b3dlci1vbgo+Cj4gIGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIHwgMTE1
ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgODUg
aW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCj4KPgo+IGJhc2UtY29tbWl0OiA4NDRhMTMw
MTBiMGI5M2Y4NTYxZWYyYzA4OGY4NDM2NDdkNWU1NTJkCj4gLS0KPiAyLjQzLjAKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
