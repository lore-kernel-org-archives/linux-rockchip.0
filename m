Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 203F3FA3751
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 13:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0ZpgjLQk/94zxVraDwXtO9o26alFvgaqaM5xVc/3R0=; b=kLnP+y4+Db4biO
	U0x/YF0wsBrQgGM5Ikoy1fkoaxOKJAC06uv03H9qU0/qpQx8G0uZKIIT1qtFqTY1gM5grT+pnleF8
	ondr1M31MtOox8Q5n/u0ebM5k648nxjn5UO7czAZdBqnDNDfZHvvuR6G8UheaeUTYksaEAiUF1V3I
	6MN8B/W3p1+iZuBA3xAguOvWOBINOBsYEHb3vlzllmWOLu4YTMFXnjQT7FqwHYeDrev54XUKMUdzl
	GydVG2Les20mv8/Ykp/U0qZUqEmUHe3b1SmIKOulBwkqAACoc4hbQGwwnWpZUvWbyHxr9LBnKnIpy
	lvHlADvvIiDU1EjK1X4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6AJ-0000000G0BS-0Vv8;
	Fri, 13 Sep 2024 13:16:47 +0000
Received: from mout.web.de ([217.72.192.78])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6AF-0000000G09R-1NjG;
	Fri, 13 Sep 2024 13:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1726233381; x=1726838181; i=markus.elfring@web.de;
	bh=8LFZzyCZ81TZMkUL3zNXl93k6bEo5DfK2Ms9KdHmW5o=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=dQgqPPdb0UNlX80mTu0/7knW1GjbII001Q7PMngwMx8yVkzAAw2bxKemvdEVkmII
	 3tpR2vTs2lSThFuQoFKjUzG1LSjs8Ftqn8nyjALngNSAp8Gh+//vcT4D2cff1c226
	 arnM1Mh6YFoUiYnmDAKtDOgfTKEjsPJ6N5lZrLbhFC21Tf4I9sifJAWw9RmTSiqx8
	 7Z4ZZl7St/fKNKpHx0azBq7iSnu5J2hgr97xWhDR2VlObkMtAtStZ4CJw01hb6JJD
	 1FHPp4MR4yjy0fLbFzcPXiwBDoMXRS0olaeVM9SnqUg+Zr/hhq0okpGS7cxwnWaJb
	 cWIgpUaVaFOczXDw3g==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.88.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MY5bT-1sUUEi1uhx-00JwqP; Fri, 13
 Sep 2024 15:16:21 +0200
Message-ID: <186de981-7a3c-4fdb-8911-8dfee597c759@web.de>
Date: Fri, 13 Sep 2024 15:16:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-pm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 cocci@inria.fr, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] pmdomain: rockchip: Simplify dropping OF node reference
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
X-Provags-ID: V03:K1:lSxIoQdC+s9CRKUItPCu1XcxxG4YbA4iSVgECTs4ptBWwKgy6yg
 3cBXw7xtPULueXwfcZJo+Jq+PBr6OmaCRiU/x4Yk8rlsidhuDvJbpTr0dstBpHsd8ysLR+E
 7yu59zCw63BverAZYGnwstXWXAYdGY+L88Mlg4kOiY2aF7bkm0LKrHdy86MCnf0rVrJjLf8
 CrSw63uxpFefauF1uqWjg==
UI-OutboundReport: notjunk:1;M01:P0:nWtRG0sGK6I=;wDB3ikrhfP6m2ODBCoYTUaGaS8H
 fMZzMZC4QJhtXwjyhKrTHseO+JjtqAyHDNMIewHvd2FbIgsPfeIomTB3sjGk6fd3HqAuTKWzL
 mKusbLgaBqRMSEKTCsFpVOE7WZg5qhnQMnFPakRrM+p2rgq1StJXOCWBnu177R1hBTgPZNs9x
 S4OJVWxip7Ko/8VT4ImOaTrKQ1L7l0xrKDftm14raSbd4XNbaK4kQosFmEK0V3sQK7KvED1Yg
 LXR7mvNc+C4x4+IteYYcJ8n9ahbC+YiGcAB425zBVHrwgXetXQRF3fgQwFKXqh3nA1HcgEiRJ
 Pc+t0kILVeIDFCSjFrAb6iLfIoyCAV25k7UhJ/iFD+csOksY90yzlCIJUZMnFsYSwlTDCWn1m
 OY+iBr8A/sT/CFxTTXvTbxERAe17IB+4WxFmPV6aM5vIJsegx+iFpEMW5TmypFOGXSGDbw5kR
 5TpzcozuMIRE9G5a90mPqo7OSHr97Q4n02uN6oYOi9v5+eCSNvc7J3sBW4HjyLpNgK+SVPXHa
 ZopbqrtRTuVgsLCyXKnuML+Twp4XCdLa5xJxSq18Ny2fQ9RwvAiJi126iddPJfZOoM/F6eumQ
 DUeQ++omb11+Uzv7H2IJ1rusQ6+C0A7JErFp5C4n2qeO6sJU6pFJpdbNCKBzb1gfxYlBXNu7C
 CLIZXE2U7Pw4ByU/ROmhQpa33eM2BXZcvsFI9CwSxEorv7TXAwcf5xPgM1LBl0+0Bk4tpcsau
 mhq+obtBjfz2y76y6idIOcuDaYfP9E5av4odxR/2dMGJLJ5xZeIa3nGK2DnzWJFYhtKql5j++
 /xs6aDc9FcgiZ3Kc+Zc+aPVg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_061643_994594_15C795BD 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
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

PiBEcm9wIE9GIG5vZGUgcmVmZXJlbmNlIGltbWVkaWF0ZWx5IGFmdGVyIHVzaW5nIGl0IGluCj4g
c3lzY29uX25vZGVfdG9fcmVnbWFwKCksIHdoaWNoIGlzIGJvdGggc2ltcGxlciBhbmQgdHlwaWNh
bC9leHBlY3RlZAo+IGNvZGUgcGF0dGVybi4KCkRlYXIgS3J6eXN6dG9mLAoKSSBub3RpY2VkIGFs
c28gdGhpcyBjb250cmlidXRpb24uCkkgZm91bmQgaXQgZWFzeSB0byBjb252ZXJ0IGl0IGFsc28g
aW50byB0aGUgZm9sbG93aW5nIHNtYWxsIHNjcmlwdCB2YXJpYW50CmZvciB0aGUgc2VtYW50aWMg
cGF0Y2ggbGFuZ3VhZ2UgKENvY2NpbmVsbGUgc29mdHdhcmUpLgoKCkBhZGp1c3RtZW50QApleHBy
ZXNzaW9uIGUsIHg7CkBACitvZl9ub2RlX3B1dChlKTsKIGlmICguLi4pCiB7CiA8Ky4uLiB3aGVu
ICE9IGUgPSB4Ci0gICBvZl9ub2RlX3B1dChlKTsKIC4uLis+CiB9Ci1vZl9ub2RlX3B1dChlKTsK
Cgo1OCBwYXRjaGVzIHdlcmUgYWNjb3JkaW5nbHkgZ2VuZXJhdGVkIGZvciBzb3VyY2UgZmlsZXMg
b2YgdGhlIHNvZnR3YXJlIOKAnExpbnV4IG5leHQtMjAyNDA5MTPigJ0uCkhvdyB3b3VsZCB3ZSBs
aWtlIHRvIHRhY2tsZSByZW1haW5pbmcgdXBkYXRlIGNhbmRpZGF0ZXMgYWNjb3JkaW5nIHRvIHNp
bWlsYXIgdHJhbnNmb3JtYXRpb24gcGF0dGVybnM/CgpSZWdhcmRzLApNYXJrdXMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
