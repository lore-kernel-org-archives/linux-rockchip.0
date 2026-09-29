Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F11CA5FA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 13:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+whonoY0LSkQ01YFak4Jc4b/SFgzktuNuRkhcTq2Cg=; b=OiwT+DrW76iq5m
	HD5J4g5FF0tyaZHLwbinqjqw612goQt8xduWec/v3InqiEavO668dTpTwkltO288kPjAEiEgBVbU4
	ULTqOa86xMk97ii6d+KebB8T9jQK/KMI80mGERPijQbFaGfQSMAYlIkSAkxHe5sSbcVn4Qv+Qm7jA
	WVPdFVhsysQgycfT3QuHvUDu+3wKdl2qss2DBZtwjv+X+1F1RhZliNKo4mphe2Ew1eihcFHtu0Z/S
	Pw+znPTcmS0awZGxf0REp0P5zVIjxjA5mi3g6z4mkj1p8hbx5yA9f/elnqEPzlQjZESTDotCtWcEl
	26UB42ThQs0eaq8Zv5Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBXyj-00000003gLd-3l9r;
	Tue, 29 Sep 2026 13:34:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBXyj-00000003gL3-0Xsk
	for linux-rockchip@bombadil.infradead.org;
	Tue, 29 Sep 2026 13:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=x/2VXyKrtJRQUAGUnEdsbXiw+HTTQZmGx3h46vcFaWo=; b=VxtKRMxyTqZzraC6djRVi29Lkv
	htj8rAg2em6ticPbBPTqBl2kAYKWWkoNTeOvzgROdOJ6Sy2mXc1fVqt7/TQU/z2po4nePXZv/IWBa
	qPKoM+yu5XzqhLQY1YYk4XVMM7yzLO/s3ZDSvmix7z5UxV5H264zK9ertifh3kLtConpU1dCgKtdu
	NZVGOpeMjUbiJW7dXWszyXEpyuWV2OQSp7lEuMEFPIaedQUJKASYbatdCQCTNOi2qi7EKRlTz1MwX
	rSu00LjYa2xoInVU83l0bX+3O4vbPHNH14R9hfsZ0zq/3jf2Unv6qHgZuDJZ9miEUu/2asov9XPNo
	HX4bZToA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBXyf-00000002gVt-0dwA
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 13:34:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68TCw2uu3300964
	for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 13:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x/2VXyKrtJRQUAGUnEdsbXiw+HTTQZmGx3h46vcFaWo=; b=IFEhf0Ud7N/myDr9
	dLIQf2PtBHG5tRGHFDZBLNYABTA5pWlKH8qzWR5BhGhNXLZjK+ggxr++/zuXpVXT
	wKvHX4iKg5orbC9X56+b2eG+WUbFNxYpjEoqamEadkWMlZ8ihIM/LVaVCGXgOGbk
	nrMKd2GbFoXav4wWyw974YdtjxdITOkq2CcF/pUspJCGlRuyLuJvNNkpqs43NDE7
	7HNiN9pDz4icUxxOjqp2vdDWw476FL5iCDWrhUf35g6nh7VhINafnuCEMHMlJJ+F
	Sre+nuWsMB1CfhuOWtokiZECNgdwiShed4KDSrcLQ3iyJGMr/HZitIkTNrqxedDx
	l7ZLpQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0dsx069e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 13:34:35 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38ecc48b3c2so9309376a91.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 06:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790688874; cv=none;
        d=google.com; s=arc-20260327;
        b=S4s5NFMANGw5Yzz7a1biuRhJtNz0ut+RlE41yONKRR6eo+mqWu+ByU3iO9B1jCHk11
         FZY+hRhvnoJXPlRV9Y/RkOEltNZWeVQwmdEBfvEIE4rIt+n7z5Sw92NpvFTR/Ygyovoq
         WHltoYaHr0WyiJgcJirLVjHRqEt3jxb2E9siWa9lJbqrdryoTacU7aBFSUNXdLRmyeXZ
         DrMRSUDVwOAvF2nASoUWcbBrdqa+CNffEiLl3EpSjra0NvJ3hoi5V8GmQ/ZZtQJxkWoX
         MeUzLeXiR13WIeVYMGvioesf0GDRAiYoxlkp5yfCI0c9e+xX5fAEt0bn+v7pZLHuUX/c
         hwQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=x/2VXyKrtJRQUAGUnEdsbXiw+HTTQZmGx3h46vcFaWo=;
        fh=a/7mOZv8mSU2p44Rc8U5+epE/cvMZFlZJKiGOiQBJqg=;
        b=E2jeSop2Ky79TziqTtwEvoip4hh9uP1rUnk09+gaofhOJM06glcba1wjsP2SrXJogL
         KvR6YO34aryNNyr+GSsG8lbJIIH4qatE8A28TIGV1qVc2Iw/UYqn+0GDMwyFjw7WbT+a
         AJ8eyRqtq6JNodNqEXKqbII1s2RLHy+BzuxYLTHcCuvtdXftmAuuGPAH6a6IwRTIxkDg
         Dpp9aEO85HX6OAwLtu2gyreWT38DYUE9vYIaqbYKUI7JCTkbPt9nqTRcPCs680J14MMR
         9MO+GcVN4IHzBXcO0REnUW0KPWDPAXf3sRhsUrra2gfkuQ8wK+ZerjGBV3iIVOso9I+k
         OgCQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790688874; x=1791293674; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=x/2VXyKrtJRQUAGUnEdsbXiw+HTTQZmGx3h46vcFaWo=;
        b=CLzyKOi4a2SDm9CNQebNagVyv+fNg6sVeFa/tF36pTtctLEIVtNigFGV2HYnvB+D6p
         hf30pJgZ2hfH9jQq+o0MwQeCaDgqMbg6KWS2taIB281FBg5C+nTRspxnCMF5SV/HjYR1
         RZM9N4TDQtoRicxfuJkr38NP/6qxIyB5b6B1bUu9rJnuh76kwYmQayN3tE0pau+lEwUa
         Wgf5aovkZZi8L3VbMgK9/wDve9K99TGEWi7SPCPuO6SjXk6k1nIMrgQ9TA8gUpi3Ln+G
         sVLEzOUkUFkNCX8HsERDZYe1nX7K2j+28ZWJK4OKsofv7Zpcg31TXtDV+0aOEW+KYlkL
         R97g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790688874; x=1791293674;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x/2VXyKrtJRQUAGUnEdsbXiw+HTTQZmGx3h46vcFaWo=;
        b=GKHN6uKKfxdsmqWCGPaWTKfncm3CdRJN/wWZa+SifEgdnbwYp011KLVL+qOa0O9WA1
         UbE0i6wuUSkTJxJ1qdvs+fRGC63osQfAWjy35MsOc/vZ7bqVhSffWCyGtn6XCJOvJo/b
         L/LzGzD+Jd7xeH4BT2dvw4OiKfRTbbyaN/YZ/e+1Upwm4/EFk5pAfzgVP/pvzm7CjCuy
         Zn+VcVXINgoOsEOCMSUcE7VOTWr7lUESogkHDKCvXRQKFZFmu+7QgFEYK/SIxgEG9hgi
         A3r+ABGE9jyRA3/dZqIWinZsxhDtH+mBaGfPogsm1a9N8PfKlTFgRHzKlhT0QyrAy7Xg
         4YIg==
X-Forwarded-Encrypted: i=1; AKwUvBzWT0lISOAUOaeFV61n0qpei1rkUy3jwgyGh5fwCUOFFFfpehUe/9+maI10jd+fN4YExkeFf6RFwnG560ZSqw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKdT6I9E+l47Vo9kGfxEXl0ZizRgfaXLiTMzutnD9z99qLf77Vx
	0XCxwIrCedKpmmoycdwUm1X/Zoet5YbH44GEYTyn0Xo2p/2YCUgNiCWNoxqxImxsClei5kMuY/X
	1+7AlY64BQzfXkK1YegQtKaXmYRcyhNFSnhMvSDH4MWgTecKzGJrn6CjhNXh4z1t3KBT0IXlVcu
	BTkS42vmdm+ML1PGHXpoxL5tG3ZbEJml9Ij+s/D5Er8KRNCbNsCw==
X-Gm-Gg: AYBFou10FfttIrt/VUfRSTc6bRZ9gZNSXMnnZHvS5jlJbatfip1ZUEGK7Hl/PnHXn2J
	DnjEXiPz8MP172pgywy9lDqPWp4ZtPsK0gpefk0HqLQYCuq7yECuZrZkfhioswShcIH0nxNSaWD
	aKZaCPJuDCwybnRVIvoLre34h7yGY/N6I54UwjzLQ0A2N7ZNU2Yws3xh0hBQ==
X-Received: by 2002:a17:90b:1e46:b0:3a4:a356:a716 with SMTP id 98e67ed59e1d1-3a4a356a7ecmr1558969a91.29.1790688874500;
        Tue, 29 Sep 2026 06:34:34 -0700 (PDT)
X-Received: by 2002:a17:90b:1e46:b0:3a4:a356:a716 with SMTP id
 98e67ed59e1d1-3a4a356a7ecmr1558949a91.29.1790688874007; Tue, 29 Sep 2026
 06:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 15:34:22 +0200
X-Gm-Features: AclHuK8vqjp48snGXlwW_zoh_B_cN1oS8M-VQfMQ2R6Q0iq5J1fEVGI6-ZRkA_0
Message-ID: <CAPx+jO-pAm6CNL2PT3uzpL6jLL59f+hsPfuTwDNgiufaXh5pSw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add mmc_send_tuning_timeout() and use it in dw_mmc-rockchip
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
        linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Adrian Hunter <adrian.hunter@intel.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDA1NCBTYWx0ZWRfX4y79k0xqMUwq
 /dwJaXtb8oLj+jiUQk4Q/ip1monFgNZj7TFm4xZTF4h5ThYHRERJUKhNmshQAOQ+uu6uBbGfKZJ
 w/4mi4V0rYrUe5lbtyYQS6cLwA/f/6fhpBTkraqqm59+8YecvLGsWuJjvoTb90Z2DwJO77ZjDJ0
 suf6gD11ZURvvEGNvFzFafi5mLe8+QDbeMPFLQ1dasMgTxDqv5N59Yrs/BgZltoVF/aSy5zKX1I
 ft/20OIYNQ/565jhPIxaiZNw6gAF1YUSIxDxYHJMw/SPmCUVDVolFZtjbEY80TCpvknr2noNc6o
 j/my/o02+5t5/6CbeTznBjtxJTchOLMegEg298yUlMy3mjqSwCkq7sNStXeueXwPYpVIO+mboEI
 8pzwX/1UzWCh7QgCQIPM//tNh4dtWMCwWZ2dBM7CiAa86QMOOpBrExGZg6LG4/RvqKCUnWcE5nm
 sumsUBLC9npQfF71TuA==
X-Proofpoint-ORIG-GUID: Q6dgSCE14q1r-f1LUJnPlAnYkwPhdQuT
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDA1NCBTYWx0ZWRfXxBb5dRVFjVoi
 dmsnNk7b6HTDc76nDUdap0gnecMNWsKy+gEBxfbwUYsA/lFDMymmup32Db0ozP4j+ZpQoILYS3o
 1bb0OzENma5tiji9kBwKzKG3ockyIDE=
X-Proofpoint-GUID: Q6dgSCE14q1r-f1LUJnPlAnYkwPhdQuT
X-Authority-Analysis: v=2.4 cv=DqvDa2/+ c=1 sm=1 tr=0 ts=6abbbe6b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8 a=s8YR1HE3AAAA:8
 a=4vQkTXLE28ycPxZ2AeQA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609290054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_143437_680318_F69AC3E7 
X-CRM114-Status: GOOD (  26.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBTZXAgMjQsIDIwMjYgYXQgMTA6NTHigK9BTSBTaGF3biBMaW4gPHNoYXduLmxpbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPgo+IFRoZSB0dW5pbmcgc3BlY3MgZ3VhcmFudGVlIHRo
YXQgYSAqc2VxdWVuY2UqIG9mIDQwIHR1bmluZyBjb21tYW5kcwo+IGNvbXBsZXRlcyB3aXRoaW4g
MTUwIG1zLCBleGNsdXNpdmUgb2YgYW55IGhvc3Qgb3ZlcmhlYWQ6Cj4KPiAgIGVNTUMsIEpFU0Q4
NC1CNTFCIDYuNi41LjEgIlNhbXBsaW5nIFR1bmluZyBTZXF1ZW5jZSBmb3IgSFMyMDAiOgo+Cj4g
ICAgICJUaGUgRGV2aWNlIGlzIGd1YXJhbnRlZWQgdG8gY29tcGxldGUgYSBzZXF1ZW5jZSBvZiA0
MCB0aW1lcyBDTUQyMQo+ICAgICAgZXhlY3V0aW9ucyB3aXRoaW4gMTUwIG1zLiBUaGlzIGlzIGV4
Y2x1c2l2ZSBvZiBhbnkgaG9zdCBvdmVyaGVhZC4iCj4KPiAgIFNEIFBoeXNpY2FsIExheWVyIFNw
ZWNpZmljYXRpb24gVmVyc2lvbiA0LjAwOgo+Cj4gICAgICJUaGUgY2FyZCBzaGFsbCBjb21wbGV0
ZSBhIHNlcXVlbmNlIG9mIDQwIHRpbWVzIENNRDE5IGV4ZWN1dGlvbnMKPiAgICAgIGluIG5vIG1v
cmUgdGhhbiAxNTBtcy4gVGhlIHR1bmluZyBwcm9jZXNzIGlzIG5vcm1hbGx5IHNob3J0ZXIgdGhh
bgo+ICAgICAgNDAgZXhlY3V0aW9ucyBvZiBDTUQxOSwgYW5kIHRoZXJlZm9yZSBzaG91bGQgYmUg
c2hvcnRlciB0aGFuCj4gICAgICAxNTAgbXMuIgo+Cj4gbW1jX3NlbmRfdHVuaW5nKCkgaG93ZXZl
ciBhcHBsaWVkIHRoYXQgMTUwIG1zIGFzIHRoZSBkYXRhIHRpbWVvdXQgb2YKPiBldmVyeSBzaW5n
bGUgQ01EMTkvQ01EMjEsIGkuZS4gNDB4IHRoZSBwZXItZXhlY3V0aW9uIGJ1ZGdldCBpbXBsaWVk
Cj4gYnkgdGhlIHNwZWNzICgxNTAgbXMgLyA0MCA9IDMuNzUgbXMgb2YgZGV2aWNlIHRpbWUsIGV4
Y2x1ZGluZyBob3N0Cj4gb3ZlcmhlYWQpLgo+Cj4gVGhlIGRhdGEgdGltZW91dCBvbmx5IG1hdHRl
cnMgZm9yIHR1bmluZyBjb21tYW5kcyB3aGVyZSB0aGUgZGV2aWNlCj4gbmV2ZXIgcmV0dXJucyB0
aGUgdHVuaW5nIGJsb2NrIGF0IGFsbDsgYSB3cm9uZyBzYW1wbGluZyBwaGFzZQo+IG5vcm1hbGx5
IGZhaWxzIGZhc3Qgd2l0aCBhIENSQyBlcnJvciBpbnN0ZWFkLiAgV2FpdGluZyAxNTAgbXMgcGVy
Cj4gc3VjaCB0ZXN0IG1ha2VzIHNvZnR3YXJlIHBoYXNlIHNjYW5uaW5nIHBhaW5mdWxseSBzbG93
LiAgV2l0aAo+IGR3X21tYy1yb2NrY2hpcCBIUzIwMCBlTU1DIHRoZSBUTU9VVCByZWdpc3RlciBz
YXR1cmF0ZXMgYXQgfjExMiBtcwo+IGZvciB0aGUgcmVxdWVzdGVkIDE1MCBtcywgYW5kIGR3X21t
Yy1yb2NrY2hpcCdzIGV4ZWN1dGVfdHVuaW5nKCkgc2NhbnMgZXZlcnkKPiBwaGFzZSBvZiB0aGUg
dHVuaW5nIHdpbmRvdywgc3RhbGxpbmcgdGhhdCBsb25nIG9uIGVhY2ggcGhhc2UgdGhhdAo+IG1p
c3NlcyB0aGUgd2luZG93LiAgTXVsdGktc2Vjb25kIGJvb3Qgc2xvd2Rvd25zIGhhdmUgYmVlbiBy
ZXBvcnRlZFsxXS4KPgo+IFRoaXMgYWxzbyBpbmNyZWFzZXMgdGhlIGNvc3Qgb2YgcnVudGltZSBy
ZS10dW5pbmcsIG5vdCBqdXN0IHRoZSB0dW5pbmcKPiBwZXJmb3JtZWQgYXQgZW51bWVyYXRpb24g
dGltZS4gIFNvIHRoaXMgc2VyaWVzIGludHJvZHVjZXMgYSBuZXcgaGVscGVyCj4gZm9yIGhvc3Qg
ZHJpdmVycyB0byBwcm92aWRlIHRoZWlyIG93biB0aW1lb3V0IGZvciBlYWNoIHR1bmluZyBjb21t
YW5kLgo+Cj4gWzFdIExpbms6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MjIxNzgxCj4KPgo+IENoYW5nZXMgaW4gdjI6Cj4gLSBMZXQgZHJpdmVycyBwcm92aWRl
IHRoZSB0aW1lb3V0IHZpYSBhIG5ldyBtbWNfc2VuZF90dW5pbmdfdGltZW91dCgpCj4gICBpbnN0
ZWFkIG9mIHNob3J0ZW5pbmcgdGhlIGRlZmF1bHQgZm9yIGV2ZXJ5Ym9keSwgYXMgc3VnZ2VzdGVk
IGJ5Cj4gICBBZHJpYW4sIHNvIGl0IGlzIGxlc3MgbGlrZWx5IHRvIGNhdXNlIGEgcmVncmVzc2lv
bi4KPiAtIFNwbGl0IGludG8gdHdvIHBhdGNoZXM7IG1tY19zZW5kX3R1bmluZygpIGtlZXBzIGl0
cyBjdXJyZW50Cj4gICBiZWhhdmlvdXIgKDE1MCBtcykgYW5kIGR3X21tYy1yb2NrY2hpcCBvcHRz
IGluIHdpdGggNSBtcy4KPgo+IFNoYXduIExpbiAoMik6Cj4gICBtbWM6IGNvcmU6IGFkZCBtbWNf
c2VuZF90dW5pbmdfdGltZW91dCgpCj4gICBtbWM6IGR3X21tYy1yb2NrY2hpcDogdXNlIGEgdGln
aHRlciBwZXItY29tbWFuZCB0dW5pbmcgdGltZW91dAo+Cj4gIGRyaXZlcnMvbW1jL2NvcmUvbW1j
X29wcy5jICAgICAgICAgfCAyMiArKysrKysrKysrKysrKystLS0tLS0tCj4gIGRyaXZlcnMvbW1j
L2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgfCAgMiArLQo+ICBpbmNsdWRlL2xpbnV4L21tYy9ob3N0
LmggICAgICAgICAgIHwgIDIgKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjcuNAo+CgpUaGUgdjIgc2VyaWVzIGFwcGxpZWQg
Zm9yIG5leHQsIHRoYW5rcyEKCkkgZGVjaWRlZCB0byBub3QgdGFnIHRoaXMgZm9yIHN0YWJsZSBr
ZXJuZWxzLCBidXQgaWYgeW91IGRlY2lkZSB0bwpzZW5kIG1hbnVhbCBiYWNrcG9ydHMgSSBhbSBh
bGwgZm9yIGl0IQoKS2luZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
