Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18FCC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 15:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yohjN+xDis4vEcK/oO8HaWSFfkltdb+zoyG9eU3ZYB0=; b=IBewA9MqNApp/V
	SgjO+YfYCNBYOdluLKD7nn6JDarivdH4pqZmn4MmLvC3YVSSt/z+FR7s01QbQpwqieqmvt1n/Msb+
	2yv1UDJmmstKtbI2FUsXCsccbsB+0muuewo228DaneOSuPdhkobAkWrdi4PpR5GU/yiqbWxW7dARU
	k2ShJRyKi24ND2eVOXcc3uoKt/PhxhiDGODDlrVn6nS5IOLRXvra8NYHW6/lAhHom1fw0V76P0BWE
	GJQTI+OExAqxzU9mqBJaSHfWy7kqaVbM74YmBGGEnPbNX5yXTfgZkpeBEqoHAHFJHvOZCot0WgQ12
	72ocFZeh5ZhiivKKucSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whU8L-0000000HSir-1tPN;
	Wed, 08 Jul 2026 15:24:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whU8I-0000000HShw-0aMl
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 15:24:19 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 668C3Iu62607231
	for <linux-rockchip@lists.infradead.org>; Wed, 8 Jul 2026 15:24:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zMJCbXSgt5kAQ4lY2HA7hGLs+5rsBULHk8Vjj77tBIU=; b=KNCMzsevlh2tuc5/
	1WnIHZZhAhaywF9mfturWOYGVfOtDmek/uPAQGzO8pf5SVlIUqrprfq9VMbsxYYJ
	In4RT4IQuLvwHdCHl2uDDy4uroXw2M6EurBD8eSU3xR6PTtrM8Dmh59iWn6ws4dC
	92CbytmCMmFTb6lNx5rnJolDTaY4yGqklGGr7xsWt1VlIFJER6Uybv8uaGV5g0Ps
	rr0TV2ROBhLa1I2l3JKNmDMytA1jSAa1NTLNCifcU+9Wn7GCxMZBY2vQc0S+n/f/
	EYdNB5Cdm1Zocr9tW97T0cxeQ0WEWUd8uVX4VjqI0hpNRSjBJRCtoKTB03j6Z/Ki
	naEIwg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9be5bd8w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 15:24:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8f0f45415cfso13330336d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 08:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783524255; cv=none;
        d=google.com; s=arc-20260327;
        b=Vl0BKHa4Yv42KHxc2fdN5t0zepygnD7Pc1QSb6E23Xj+w9taVLwkspePMGjDr7faNp
         4EN7bKQDex7fFxciUmWPu2eVofigm3t+kmkWlvAZwAf2vqjOlGkTn9jtk6c9IRKl0fJS
         7h9ZQ3Y+LSEyQdwCPszgEaisGdII9RZenxGO1j9aPFBSdZB492WFuSOZF9XAfAqtgG3I
         aAASzdsIFaKXgTv7P7URZYeRbzVqi4vwNt1Swun6WTTH1Mo7Dse9wgEqhP5dfea1jXmR
         Ts7KBgcEls6iczToDvou4VepVl4i6dxixw0WbXGqNCFHr15Q0LXHnBY7+WgaKIqA34hU
         qB9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zMJCbXSgt5kAQ4lY2HA7hGLs+5rsBULHk8Vjj77tBIU=;
        fh=ttooJbTmtOy/I6FMUl62/uPHrZ1NiiD6XP2pQr9xx5I=;
        b=LaLgt1ixXuh+YaukDlY5jFF/GMCXibjkSWS77mPx4uRUCNb6pKoXDXxzb4Ux7Tey6c
         YTm7Qa1mzuSPnhj3Q1xSFqy2qUFh3TiUrjJcUAe2MOqtA7um2yAJRRJGivfDT4EwX0na
         l1bfDPCkgeKUNg++VihcxLJBgjDPTZFoA81JF4OgjgQTFefZj4PGwpdW7M8wrfEB2hHR
         XG2+U+wnW7igURM08aYt7CWbZ9S8J7hqedRP0cXzLlqdw6HqyXL88pGTQIuSCrkGGyce
         Cd/RAmEKnagnXi+hpOJ3bCN55BxsfVv2da78YfdXodYgVtTzuD2cRTxhOiOIN+fQXqJQ
         PHew==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783524255; x=1784129055; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zMJCbXSgt5kAQ4lY2HA7hGLs+5rsBULHk8Vjj77tBIU=;
        b=jOvrtYllDCwQkJ69WldN4dP3RgC5des6QYAKfR1TxZGjUYNkNh5gfge0v3cAqTeQsN
         Iq77pXxCl2ZuwQVNbvRLm2yO3AHFL133uzaBpiTZjZ45eeYKvd1cH3uonhqYYPzc1Fdi
         g9w1+eYEqcN6miXKEH7kHyNcxzI+FFhMPRGJO3vmTfzdbSr8uLesLFrUXDgktf2Jv6wX
         mgsFIyB7/LQlH1R+LhDeCF0yleLVMXh4KGMJhkA5uVbebmbrTSkMWgvD/oG4GtyKXDeK
         oiENa5wy6d1pnB2f9wWA9ENklcHwtlAVMgLwsi7x/IeATfyfh6WLEnkBwUaWjba/qbKD
         JsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783524255; x=1784129055;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zMJCbXSgt5kAQ4lY2HA7hGLs+5rsBULHk8Vjj77tBIU=;
        b=egTLw587IYRQCyiGHk/FMfg+4msEw4WD4Zv2sukPI/D71pNC30eqlq1/T2Bt9B4Vlm
         eHQtIPfTlOAbNZ8R/omMnhJFiSDV7krPpNZtZvD5Aq8jmhXdSD+N7FkUcziUruTYQfWw
         LrK2bNGojoANErjBocmxjASdAjxWgZiOo7n+YJaYZ24bM9K+yAGzUCOSWBX2myjiT5nW
         PRPcw94Q9Qm/0rlcW/gHCr70HtlnVDDi0t8XIfyIHqv9WwT6VUbXmZCGdKXpX7tVX5iZ
         ya1tVzEONL2QcFpN/RYZA2PS+m0dZZWzuYFXBDZsdcYWu15XlHh0r614c956OmXye3FV
         xVGQ==
X-Forwarded-Encrypted: i=1; AHgh+Rphq0M5233IDKCn17nBdRLtZKdA+5MHSLNCTjQ5HdxyZr+KrrLQ+nPS/ft62MQBiAExzxYPQlrqMa9JhUxtMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcBGRsoEHyDbL/xbjySWgxnl5DgSPftN41Z3KHwGzqrH1al2hw
	c4fXDyWpCyPtdmhAI76P/GTCnGEo+Qkk7+GVx2vP253Fz49kwJPGTwtYT8KehIAi78MtBdYqvng
	sbqEr4eTYEHfojOp21/ihOyjonxokrFuMuX+gbbfPN/76euUHVqS0tZoJfP1tOJuCRFH8HGQz01
	JuabTKcQDkuxaY/tK7vZplQ2CR7KNj9vnqRz8eKInJh3GVnoEDog==
X-Gm-Gg: AfdE7ckP4pKleUnjGgi761SLADDECUQ+jhAYfU2egZf/iOibJTnULJtIeL9efd57vZP
	urhqgMbsCHqqEzQ4RGDmSwxmjpTQKqTtubGFs+33ZxIqS2l5f1dbKJV7Y8n2zNxg3TkBvcm5CoO
	iWe21fTzZGP1jU7eRPLH9z28qn5VuzbmNhR2T1UccZZGICwRtSE8BvFRbcK9ozEI/l9Woy
X-Received: by 2002:a05:6214:5504:b0:8fd:6df3:b377 with SMTP id 6a1803df08f44-8fec323e5b7mr31147536d6.59.1783524255422;
        Wed, 08 Jul 2026 08:24:15 -0700 (PDT)
X-Received: by 2002:a05:6214:5504:b0:8fd:6df3:b377 with SMTP id
 6a1803df08f44-8fec323e5b7mr31146966d6.59.1783524254959; Wed, 08 Jul 2026
 08:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260613070116.438906-1-midgy971@gmail.com> <20260613070116.438906-10-midgy971@gmail.com>
In-Reply-To: <20260613070116.438906-10-midgy971@gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Wed, 8 Jul 2026 17:24:04 +0200
X-Gm-Features: AVVi8Cct2pvQNJ49kCocOmZ_g-M7AfBNrJ0WxbavryIJprjGJGNLahRi4HQp2RE
Message-ID: <CAPx+jO_2=SYo0smYzwd8T+TUtHZtgXU0dSWQgZGZ_haV3aOU_Q@mail.gmail.com>
Subject: Re: [RFC PATCH v4 9/9] pmdomain: rockchip: Add a regulator to the
 RK3568 NPU power domain
To: MidG971 <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        ulf.hansson@linaro.org, dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        xxm@rock-chips.com, chaoyi.chen@rock-chips.com,
        finley.xiao@rock-chips.com, diederik@cknow-tech.com, jonas@kwiboo.se
X-Authority-Analysis: v=2.4 cv=GJc41ONK c=1 sm=1 tr=0 ts=6a4e6ba0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=JfrnYn6hAAAA:8 a=pGLkceISAAAA:8 a=s8YR1HE3AAAA:8
 a=bcpWyJPC7eKr9KdVfhAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDE1MSBTYWx0ZWRfX4LO0Pdq0TG1z
 Ax/fCdbTV/lwM57OBB/ECYVdmrJ5xm4SgRyOWp/wzGkm/uEwpAyTig6ZV7CNQEL9aSb7aj2Fnz+
 4uPrpTII9NPZg6Gj1wpTFccfdY4PGtI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDE1MSBTYWx0ZWRfX+XVGPNDDuJJi
 L++xqo3nqZ1xNpNmUckbQpbD6YMklhaT4wHnxynnEADSZs/POW0UYtakQWUA6PIsZiQe0rb9Boj
 3k082RgU+oZh9Yu/LIp46Vfn+hc0dHfmnF/bT0c2G/k1uhG8GEkpr8aAbIoQH97i9O/Urqkpb9U
 /Sl+FjB/oXdVmnfW+nScV3H3SeTqK3chT2neBXEHmmvtAGVI2NGXm0GY6yGR66EQ3gubbLCLk8s
 2NjX41aPWqzdtmOwetcZBoSn1/QhEQl/CSTzcIN+Qy9teBxYmglpMpufL2aBwFyQ7wOfLcCVt6b
 HtGSfROJqiHaE+1khwe2QvHgcVhSP1JD+G5G/soeKi+sivbP5IHwF+7nlczMaBrWQa3QccKJ7np
 3QsLEHkGwBMHOI4ijTJMFM8OEHzeXWXVSkCldKS+dhahXWYfyBTFN7o25wjzUgb/8XJHl+ELm7z
 zjz4jOPL/20+zph6Jgg==
X-Proofpoint-ORIG-GUID: 21hHlX5e0_EA-3bDOkAdxu7yhUhpIfM7
X-Proofpoint-GUID: 21hHlX5e0_EA-3bDOkAdxu7yhUhpIfM7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_02,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_082418_188805_4914DB2D 
X-CRM114-Status: GOOD (  22.38  )
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

T24gU2F0LCBKdW4gMTMsIDIwMjYgYXQgOTowMeKAr0FNIE1pZEc5NzEgPG1pZGd5OTcxQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBNaWRneSBCQUxPTiA8bWlkZ3k5NzFAZ21haWwuY29tPgo+
Cj4gVGhlIFJLMzU2OCBOUFUgcmFpbCAodmRkX25wdSkgbmVlZHMgdG8gYmUgZW5hYmxlZCBiZWZv
cmUgdGhlIGRvbWFpbiBpcwo+IHBvd2VyZWQgb24gYW5kIGRpc2FibGVkIGFmdGVyIGl0IGlzIHBv
d2VyZWQgb2ZmLiBHaXZlIERPTUFJTl9SSzM1NjggYQo+IHJlZ3VsYXRvciBwYXJhbWV0ZXIgKGxp
a2UgRE9NQUlOX1JLMzU4OCBhbHJlYWR5IGhhcykgc28gdGhlIE5QVSBkb21haW4KPiBjYW4gc2V0
IG5lZWRfcmVndWxhdG9yLCBsZXR0aW5nIGdlbnBkIG1hbmFnZSB0aGUgcmFpbCB3aXJlZCB1cCBh
cyB0aGUKPiBkb21haW4ncyBkb21haW4tc3VwcGx5IGluc3RlYWQgb2YgbWFya2luZyBpdCBhbHdh
eXMtb24gaW4gRFQuCj4KPiBTdWdnZXN0ZWQtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWRneSBCQUxPTiA8bWlkZ3k5NzFAZ21h
aWwuY29tPgoKVGhpcyBsb29rcyBnb29kIHRvIG1lLiBJIGFzc3VtZSB0aGlzIGNhbiBiZSBwaWNr
ZWQgdXAgaW5kZXBlbmRlbnRseSBvZgp0aGUgb3RoZXIgcGF0Y2hlcywgd2hlbmV2ZXIgeW91IGRl
Y2lkZSB0byBtb3ZlIGZvcndhcmQgZnJvbSB0aGUgUkZDLgpJZiBub3QsIHBsZWFzZSBsZXQgbWUg
a25vdy4KCktpbmQgcmVnYXJkcwpVZmZlCgo+IC0tLQo+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tj
aGlwL3BtLWRvbWFpbnMuYyB8IDM2ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMvcG1k
b21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gaW5kZXggNDkwYmJiMWQxZDhlOC4uMTlkYjMw
N2UzODExZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFp
bnMuYwo+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gQEAg
LTEzOCw2ICsxMzgsMjAgQEAgc3RydWN0IHJvY2tjaGlwX3BtdSB7Cj4gICAgICAgICAuYWN0aXZl
X3dha2V1cCA9IHdha2V1cCwgICAgICAgICAgICAgICAgICAgICAgICBcCj4gIH0KPgo+ICsjZGVm
aW5lIERPTUFJTl9NX1IoX25hbWUsIHB3ciwgc3RhdHVzLCByZXEsIGlkbGUsIGFjaywgd2FrZXVw
LCByZWd1bGF0b3IpICAgICAgXAo+ICt7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXAo+ICsgICAgICAgLm5hbWUgPSBfbmFtZSwgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5wd3Jfd19tYXNrID0gKHB3cikgPDwgMTYsICAg
ICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5wd3JfbWFzayA9IChwd3IpLCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5zdGF0dXNfbWFzayA9IChzdGF0dXMp
LCAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5yZXFfd19tYXNrID0gKHJlcSkg
PDwgMTYsICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5yZXFfbWFzayA9IChyZXEp
LCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5pZGxlX21hc2sgPSAo
aWRsZSksICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5hY2tfbWFzayA9
IChhY2spLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5hY3RpdmVf
d2FrZXVwID0gd2FrZXVwLCAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArICAgICAgIC5uZWVk
X3JlZ3VsYXRvciA9IHJlZ3VsYXRvciwgICAgICAgICAgICAgICAgICAgIFwKPiArfQo+ICsKPiAg
I2RlZmluZSBET01BSU5fTV9HKF9uYW1lLCBwd3IsIHN0YXR1cywgcmVxLCBpZGxlLCBhY2ssIGdf
bWFzaywgd2FrZXVwLCBrZWVwb24pIFwKPiAgeyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiAgICAgICAgIC5uYW1lID0gX25hbWUsICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiBAQCAtMjQxLDggKzI1NSw4IEBAIHN0cnVj
dCByb2NrY2hpcF9wbXUgewo+ICAjZGVmaW5lIERPTUFJTl9SSzM1NjIobmFtZSwgcHdyLCByZXEs
IGdfbWFzaywgbWVtLCB3YWtldXApICAgICAgICAgICAgIFwKPiAgICAgICAgIERPTUFJTl9NX0df
U0QobmFtZSwgcHdyLCBwd3IsIHJlcSwgcmVxLCByZXEsIGdfbWFzaywgbWVtLCB3YWtldXAsIGZh
bHNlKQo+Cj4gLSNkZWZpbmUgRE9NQUlOX1JLMzU2OChuYW1lLCBwd3IsIHJlcSwgd2FrZXVwKSAg
ICAgICAgICBcCj4gLSAgICAgICBET01BSU5fTShuYW1lLCBwd3IsIHB3ciwgcmVxLCByZXEsIHJl
cSwgd2FrZXVwKQo+ICsjZGVmaW5lIERPTUFJTl9SSzM1NjgobmFtZSwgcHdyLCByZXEsIHdha2V1
cCwgcmVndWxhdG9yKSAgICAgICAgICAgICAgIFwKPiArICAgICAgIERPTUFJTl9NX1IobmFtZSwg
cHdyLCBwd3IsIHJlcSwgcmVxLCByZXEsIHdha2V1cCwgcmVndWxhdG9yKQo+Cj4gICNkZWZpbmUg
RE9NQUlOX1JLMzU3NihuYW1lLCBwX29mZnNldCwgcHdyLCBzdGF0dXMsIHJfc3RhdHVzLCByX29m
ZnNldCwgcmVxLCBpZGxlLCBnX21hc2ssIHdha2V1cCkgICAgICBcCj4gICAgICAgICBET01BSU5f
TV9PX1JfRyhuYW1lLCBwX29mZnNldCwgcHdyLCBzdGF0dXMsIDAsIHJfc3RhdHVzLCByX3N0YXR1
cywgcl9vZmZzZXQsIHJlcSwgaWRsZSwgaWRsZSwgZ19tYXNrLCB3YWtldXApCj4gQEAgLTEyNzQs
MTUgKzEyODgsMTUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9kb21haW5faW5mbyBy
azM1NjJfcG1fZG9tYWluc1tdID0gewo+ICB9Owo+Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9j
a2NoaXBfZG9tYWluX2luZm8gcmszNTY4X3BtX2RvbWFpbnNbXSA9IHsKPiAtICAgICAgIFtSSzM1
NjhfUERfTlBVXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgibnB1IiwgIEJJVCgxKSwgQklUKDIp
LCAgZmFsc2UpLAo+IC0gICAgICAgW1JLMzU2OF9QRF9HUFVdICAgICAgICAgPSBET01BSU5fUksz
NTY4KCJncHUiLCAgQklUKDApLCBCSVQoMSksICBmYWxzZSksCj4gLSAgICAgICBbUkszNTY4X1BE
X1ZJXSAgICAgICAgICA9IERPTUFJTl9SSzM1NjgoInZpIiwgICBCSVQoNiksIEJJVCgzKSwgIGZh
bHNlKSwKPiAtICAgICAgIFtSSzM1NjhfUERfVk9dICAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgi
dm8iLCAgIEJJVCg3KSwgQklUKDQpLCAgZmFsc2UpLAo+IC0gICAgICAgW1JLMzU2OF9QRF9SR0Fd
ICAgICAgICAgPSBET01BSU5fUkszNTY4KCJyZ2EiLCAgQklUKDUpLCBCSVQoNSksICBmYWxzZSks
Cj4gLSAgICAgICBbUkszNTY4X1BEX1ZQVV0gICAgICAgICA9IERPTUFJTl9SSzM1NjgoInZwdSIs
ICBCSVQoMiksIEJJVCg2KSwgIGZhbHNlKSwKPiAtICAgICAgIFtSSzM1NjhfUERfUktWREVDXSAg
ICAgID0gRE9NQUlOX1JLMzU2OCgidmRlYyIsIEJJVCg0KSwgQklUKDgpLCAgZmFsc2UpLAo+IC0g
ICAgICAgW1JLMzU2OF9QRF9SS1ZFTkNdICAgICAgPSBET01BSU5fUkszNTY4KCJ2ZW5jIiwgQklU
KDMpLCBCSVQoNyksICBmYWxzZSksCj4gLSAgICAgICBbUkszNTY4X1BEX1BJUEVdICAgICAgICA9
IERPTUFJTl9SSzM1NjgoInBpcGUiLCBCSVQoOCksIEJJVCgxMSksIGZhbHNlKSwKPiArICAgICAg
IFtSSzM1NjhfUERfTlBVXSAgICAgICAgID0gRE9NQUlOX1JLMzU2OCgibnB1IiwgIEJJVCgxKSwg
QklUKDIpLCAgZmFsc2UsIHRydWUpLAo+ICsgICAgICAgW1JLMzU2OF9QRF9HUFVdICAgICAgICAg
PSBET01BSU5fUkszNTY4KCJncHUiLCAgQklUKDApLCBCSVQoMSksICBmYWxzZSwgZmFsc2UpLAo+
ICsgICAgICAgW1JLMzU2OF9QRF9WSV0gICAgICAgICAgPSBET01BSU5fUkszNTY4KCJ2aSIsICAg
QklUKDYpLCBCSVQoMyksICBmYWxzZSwgZmFsc2UpLAo+ICsgICAgICAgW1JLMzU2OF9QRF9WT10g
ICAgICAgICAgPSBET01BSU5fUkszNTY4KCJ2byIsICAgQklUKDcpLCBCSVQoNCksICBmYWxzZSwg
ZmFsc2UpLAo+ICsgICAgICAgW1JLMzU2OF9QRF9SR0FdICAgICAgICAgPSBET01BSU5fUkszNTY4
KCJyZ2EiLCAgQklUKDUpLCBCSVQoNSksICBmYWxzZSwgZmFsc2UpLAo+ICsgICAgICAgW1JLMzU2
OF9QRF9WUFVdICAgICAgICAgPSBET01BSU5fUkszNTY4KCJ2cHUiLCAgQklUKDIpLCBCSVQoNiks
ICBmYWxzZSwgZmFsc2UpLAo+ICsgICAgICAgW1JLMzU2OF9QRF9SS1ZERUNdICAgICAgPSBET01B
SU5fUkszNTY4KCJ2ZGVjIiwgQklUKDQpLCBCSVQoOCksICBmYWxzZSwgZmFsc2UpLAo+ICsgICAg
ICAgW1JLMzU2OF9QRF9SS1ZFTkNdICAgICAgPSBET01BSU5fUkszNTY4KCJ2ZW5jIiwgQklUKDMp
LCBCSVQoNyksICBmYWxzZSwgZmFsc2UpLAo+ICsgICAgICAgW1JLMzU2OF9QRF9QSVBFXSAgICAg
ICAgPSBET01BSU5fUkszNTY4KCJwaXBlIiwgQklUKDgpLCBCSVQoMTEpLCBmYWxzZSwgZmFsc2Up
LAo+ICB9Owo+Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfZG9tYWluX2luZm8gcmsz
NTc2X3BtX2RvbWFpbnNbXSA9IHsKPiAtLQo+IDIuMzkuNQo+Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
