Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E721C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 19:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hym8HFAX3OWnpMktTSe3G19UkJTnO3DbSb4D22DA9jQ=; b=XfNqWky61h1vUI
	3ep25bDyRe542zCgEMEa/aON7pWH0bSZ/DESxgJG9lrpc8sRCIBGwcjpYxXMqIchUpphi/RabRJTa
	UyBHd1/HODX3NMWAbog6E3xMwV2qJ/ppNT20yPQ0Oqw2vPgn1ds+HS/gBiq7jhXi+NCAZklcChzYj
	2bk2ABPzp2vDD9CPYyXGpXa5pqR4u5usAfiWTyczjB/2r50n9vhPbEmQ8B0zkbpELRLdAVqZWjbXR
	IWI6z6toc0kfrzKIHW3i1c//PkEWQxrLUltymdNoP3LmxL4BUR6sEaiyHNELn6hxoblkGZSD3zSgi
	8U6gu3RIbo1ksm89xVAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEwQ3-00000007KnO-3jLk;
	Wed, 05 Jun 2024 19:35:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEwPz-00000007Km5-2M34;
	Wed, 05 Jun 2024 19:35:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4213485697fso2494355e9.1;
        Wed, 05 Jun 2024 12:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717616127; x=1718220927; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xMW27uLyiggFZyQj0ua1+x+6CiSgEJa/oN4WUn8i5+M=;
        b=NZjnBP9uv1HjjFY3fH3DHfjFott/dhELIf+xYUMYeIM1QVDXicspTi7l6EiHbPSLDH
         ZTBSIHyIeiOM86m5RHQzR6b8WmzEEyYMeOywANqniph9mSeDLU5C0q5pYPhcrF57DvhI
         HtRacVIG3YTHMMQeVC8zfs1HIAiL9jIbq0o71FZobJx/M8KwyQnG/GgSa+Kw/lblEBIL
         +AB6PAl5ozuCxTrE6AhNURvUF3bLqfTZB/zkX1vPDVxPETmWPKHwUmRnvAbGFYJUTWJH
         yABuuEaz77wecyVKqoaaKOqtNhOYFsem43M4tDbvl7OMhyaKuxGG23pzuI0P+5OH5HMp
         w5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717616127; x=1718220927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xMW27uLyiggFZyQj0ua1+x+6CiSgEJa/oN4WUn8i5+M=;
        b=nLT2ade/1jOS0aw/x5wBUlpxAIj+FNY4T+w+4a7tv2leHWNazDHJ1rcxdY6FaSPo9u
         nt6G+EWsK7j5l+JJpwq2ffn+0b5PkqUhqXPHUllOIxq47lgWG80YZbFGYP9QW+mro4gn
         cyuCQX2dYdDwJT95/QbtEK8oGLSk0RCoVWrb5JBsbtvQ9+oQFjYuwW7NchnTIvTh+Tg6
         UcemHo1oxM8vSjquEuENbO+F8cFY2PpPhI9Q//K9jHeFnMBImSQWaSiP4MhRIU5Oof8z
         oshTxKn2kobd8J1vntWubAxaYTPoT9ZIA+j/UZhR6qNkD4I+eZppvLaNqTWi3JJ95xy/
         q0Ug==
X-Forwarded-Encrypted: i=1; AJvYcCWbZeimWi9MDsk71ZJX4s6YiU+20JHuS/VSgBcFkYzVVuovQrvxkjgcp+F7HWJ5VSQr30WUpAK92bu/EShllggqtYwHK8F9+HAHsvod0B4ZNvA6CO62y0sckQkAJpCIYpo7X8xW9VbDmtTPWu0ZWBzSqVAFUf3Aif0=
X-Gm-Message-State: AOJu0Yzi6VokBUCczTgLLleURojvq0AUmrDbf2YV5vCzx4UvLhhfzMuF
	yplrfllmDdSfGwUerOygVRW73AQFJcdCSZHBk++Aut4mYyIKGiE=
X-Google-Smtp-Source: AGHT+IGilZT5e7h6ib58a/iB6k4o2o0Eiurb7wcJkYAHI6upyPaEKRprxFJyQN2qytx58DiQCBg9YA==
X-Received: by 2002:a05:600c:4e8a:b0:420:fcd:10e0 with SMTP id 5b1f17b1804b1-421562e4000mr28528355e9.15.1717616127301;
        Wed, 05 Jun 2024 12:35:27 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:5211:58fe:dfef:c48c? ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b8eb3387sm666988366b.155.2024.06.05.12.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 12:35:26 -0700 (PDT)
Message-ID: <7ee2d114-f8a8-4f67-9b50-aa7ad5b46c7f@gmail.com>
Date: Wed, 5 Jun 2024 21:35:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: rk3128: Add HCLK_SFC
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240605172154.193047-1-knaerzche@gmail.com>
 <20240605172154.193047-2-knaerzche@gmail.com>
 <20240605-crummy-racoon-fadc5a6f5d25@spud>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20240605-crummy-racoon-fadc5a6f5d25@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_123531_656390_A621DF3C 
X-CRM114-Status: GOOD (  12.99  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkFtIDA1LjA2LjI0IHVtIDE5OjU4IHNjaHJpZWIgQ29ub3IgRG9vbGV5Ogo+IE9uIFdlZCwgSnVu
IDA1LCAyMDI0IGF0IDA3OjIxOjUyUE0gKzAyMDAsIEFsZXggQmVlIHdyb3RlOgo+PiBBZGQgYSBj
bG9jayBpZCBmb3IgU0ZDJ3MgQUhCIGNsb2NrLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJl
ZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPj4gLS0tCj4+IE5COiBJJ3ZlIGFkZGVkIHRoZSBuZXcg
aWQgYXQgdGhlIHRvcCBvZiBleGlzdGluZyBIQ0xLJ3MsIHNpbmNlIGFkZGluZyBpdCBhdAo+PiB0
aGUgYm90dG9tIHdvdWxkIGNoYW5nZSBDTEtfTlJfQ0xLUyBhbmQgdGhlcmVmb3JlIHRoZSBBQkkg
YW5kIHRoZXJlIGlzCj4+IHBsZW50eSBvZiAiZnJlZSIgaWRzIGJldHdlZW4gUENMS19NSVBJUEhZ
IGFuZCBIQ0xLX1NQRElGLgo+IFdlJ3ZlIHJlbW92ZWQgYSBidW5jaCBvZiB0aGluZ3MgbGlrZSAi
Q0xLX05SX0NMS1MiIGZyb20gYmluZGluZ3MgYmVmb3JlCj4gYW5kIGFkdm9jYXRlIGFnYWluc3Qg
YWRkaW5nIHRoZW0uIFBhdGNoZXMgbGlrZSB0aGlzIGJlaW5nIHRoZSByZWFzb24KPiB3aHkuLgoK
WWVhaCwgc3VyZSAuLi4gSSB0aG91Z2h0IHJlbW92aW5nIGl0IHdvdWxkIGJlIGxpdHRsZSBvdXQg
b2Ygc2NvcGUgZm9yIHRoaXMKc2VyaWVzLiBCdXQgYXMgd2UgYXJlIGFscmVhZHkgaGF2aW5nIGEg
aGVscGVyIGZvciBmaW5kaW5nIHRoZSAibWF4IGlkIsKgIGZvcgpSb2NrY2hpcCBjbG9ja3MsIEkn
bGwgcmVzZW5kIGFuZCByZW1vdmUgdGhhdCBhbm5veWluZyBtYWNybyBhbmQgYWRkIHRoZSBuZXcK
aWQgYXQgdGhlIGJvdHRvbSBvZiB0aGUgZXhpc3RpbmcgKHdoZXJlIGl0IGJlbG9uZ3MpLgoKQWxl
eAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
