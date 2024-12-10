Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC610E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 20:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHwfa0Ps3rL3ydz9EGfwMUwsmXpzG+/b6Z2TCh0lQqA=; b=TvmovbIG765aTB
	65WrsAQ7LwQ/TC/le+jY3X0jlV8ajWBBeACF8QrFDwg05KNuvCsZrFW2Sos41xeQejlBEJgco+gOm
	NuWXNuoEiLY9XKUSS8stP9WnGoJnhwEa4WVdzPql/Db+qgla35NqMyHqotfoi16zCfD7j5wlqo7OU
	EQOQoWvZM4UqamxZRj6iYaiVO4gRWqlg7dAyEXOOCQYpsjPGeGyY7/ZiCCwVlJIDtflLvhCOlzILn
	Q9pXvfbg21pZJxn7CO412zY1iPnigCyI0Bk6BHFoSABglzTfTfyU2b+YPBgVOErn0OC4ofW5+z1sW
	IjblqCuQ54DyrH+MJ01g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6cF-0000000CdRq-1pyZ;
	Tue, 10 Dec 2024 20:13:55 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6bC-0000000CdJR-0vUZ;
	Tue, 10 Dec 2024 20:12:51 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5d3d479b1e6so5204556a12.2;
        Tue, 10 Dec 2024 12:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733861568; x=1734466368; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9lbLBBO8kM2n2jRi2Qb1qwlvQ3SeySuQW/fRe7E1eA=;
        b=fERUggPkqGR6BhhMz0sgC9N9p8rDk8Z0yOqd7kMqaggHFoXCyeeM6+0KkpmCQsuYZ8
         sn7h1bygoqIbXWXpgkGPWwiM90N/meE1VP0jgVjEOqlbN2Ais7XiS5BDa6LiLgil1cG5
         i/U126Xx/yuPLipA1f4p080zsv+8Dy68j9gviwVjiVPhR1Hy5w6n4917rBesZvZ+yY8b
         FhzAw2k/Muftlj74Sxf4g2OWVCuS2odirCnFay1TWhb/NA+fCUOC5qWqVyCzIVhSa7lD
         WDELucQdvnl1v0WY1jit24rV1IpXN3cn7m4T+Xz+Qp9MD3WQ6S1jHwmq0+sv3bTnufmK
         WcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733861568; x=1734466368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9lbLBBO8kM2n2jRi2Qb1qwlvQ3SeySuQW/fRe7E1eA=;
        b=qLfvV5b5zT5NySBq9puttApfRLqP5Smeu5lUcLsllOLjYd4OA9EePA1DmUeRAuvBCQ
         A5NLOa0vjR7BVyaqsmxdr0YQoXjrqlFI3f3VX15hS/MXvLsyI9CfaZhOaWyKokuPzj0u
         bdigqh3LlyqLqOWOPJkTlkClvAIv4dMrDbqrE2JBeKLFik7w90TH6ARDe/osZcUF/1UI
         V5D4QlQnGaxgdjzsiMOIREeazFDlmqi1qF4aANqvyNaD3FJSAHELcXtxyTwx86pPwDkd
         pwhvuZirgQxP8KdicAidLTanDWW4XtDf/oGN5IjJGG5VJCSvPQlkG7+nih76v6Fdg6dp
         S3pA==
X-Forwarded-Encrypted: i=1; AJvYcCUWFQfqqJFOC1YDDP8GjWv/L6fUefmr26HekhENIzHH07xfrKRzfP9hdjrgKrD2wWqDPToKdJbHK2Zfs5Go0rQ=@lists.infradead.org, AJvYcCWKu/jQKItZg22Ppiz94cLDR6+jCo83TTHZpAdW6j4qpdNj26dj7CMaliQOG9fmJD72M9wHR7JVr1I2vrOomQ6n@lists.infradead.org
X-Gm-Message-State: AOJu0YxPhNfR9g1zv4nSUCqPI9316mPhsgPTY8OTpiDBeeajuK8JdJtZ
	yIxB9EaRgW7tBhgEnSvgfe0m/+ndyHAoGX40OXcXC42zoLbvdEUM+RIo9HQIPVirTvKDCW3+NFP
	ydWu2tL7cHV7iEWeUCB9jHt5m8Go=
X-Gm-Gg: ASbGncsNAEerT2bObF/HZB57Q2LldZyUypE/iVpcdryuyrSqOmPARFqLe2KCKynKVZM
	uC5MwZHGGOpWLdVOM74+uYed4qHmnkGkqbUCg
X-Google-Smtp-Source: AGHT+IGiPfuPBW3oKmG36OHVBhNiaww+/ndbWSRkgdBaXKVg4Zbsas+aQCY8I9lvfIp5/gr9+wqDTDl1YykwOSpcYwM=
X-Received: by 2002:a05:6402:2808:b0:5d3:ce7f:abdf with SMTP id
 4fb4d7f45d1cf-5d433163d71mr192647a12.29.1733861568260; Tue, 10 Dec 2024
 12:12:48 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-2-pgwipeout@gmail.com>
 <1b323d6e9ef873bfc770e9d54b7a3a64@manjaro.org>
In-Reply-To: <1b323d6e9ef873bfc770e9d54b7a3a64@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 15:12:36 -0500
Message-ID: <CAMdYzYqmn0UktNfz7L352zcjgmxf4tsRs2fwiFXF7NbfPY4zSg@mail.gmail.com>
Subject: Re: [PATCH 1/6] pmdomain: rockchip: fix rockchip_pd_power error handling
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Caesar Wang <wxt@rock-chips.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Kevin Hilman <khilman@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_121250_261515_07F8957C 
X-CRM114-Status: GOOD (  27.01  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMzoxOOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4gT24gMjAyNC0xMi0xMCAwMjoz
MCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IFRoZSBjYWxscyByb2NrY2hpcF9wZF9wb3dlciBtYWtl
cyB0byByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVzdCBsYWNrCj4gPiBhbnkgcmV0dXJuIGVy
cm9yIGhhbmRsaW5nLCBjYXVzaW5nIGRldmljZSBkcml2ZXJzIHRvIGluY29ycmVjdGx5Cj4gPiBi
ZWxpZXZlCj4gPiB0aGUgaGFyZHdhcmUgaWRsZSByZXF1ZXN0cyBzdWNjZWVkIHdoZW4gdGhleSBt
YXkgaGF2ZSBmYWlsZWQuIFRoaXMKPiA+IGxlYWRzCj4gPiB0byBzb2Z0d2FyZSBwb3NzaWJseSBh
Y2Nlc3NpbmcgaGFyZHdhcmUgdGhhdCBpcyBwb3dlcmVkIG9mZiBhbmQgdGhlCj4gPiBzdWJzZXF1
ZW50IFNFcnJvciBwYW5pYyB0aGF0IGZvbGxvd3MuCj4gPgo+ID4gQWRkIGVycm9yIGNoZWNraW5n
IGFuZCByZXR1cm4gZXJyb3JzIHRvIHRoZSBjYWxsaW5nIGZ1bmN0aW9uIHRvIHByZXZlbnQKPiA+
IHN1Y2ggY3Jhc2hlcy4KPiA+Cj4gPiBnc3QtbGF1bmNoLTEuMCB2aWRlb3Rlc3RzcmMgbnVtLWJ1
ZmZlcnM9MjAwMCAhIHY0bDJqcGVnZW5jICEgZmFrZXNpbmsKPiA+IFNldHRpbmcgcGlwZWxpbmUg
dG8gUEFVU0VEIC4uLmVyLXg2NAo+ID4gUGlwZWxpbmUgaXMgUFJFUk9MTElORyAuLi4KPiA+IFJl
ZGlzdHJpYnV0ZSBsYXRlbmN5Li4uCj4gPiByb2NrY2hpcC1wbS1kb21haW4gZmYxMDAwMDAuc3lz
Y29uOnBvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBnZXQgYWNrCj4gPiBvbgo+ID4gZG9tYWlu
ICdoZXZjJywgdmFsPTB4OTgyNjAsIGlkbGUgPSAwCj4gPiBTRXJyb3IgSW50ZXJydXB0IG9uIENQ
VTIsIGNvZGUgMHgwMDAwMDAwMGJmMDAwMDAyIC0tIFNFcnJvcgo+ID4gQ1BVOiAyIFVJRDogMCBQ
SUQ6IDgwNCBDb21tOiB2aWRlb3Rlc3RzcmMwOnMgTm90IHRhaW50ZWQgNi4xMi4wLXJjNSsKPiA+
ICM1NAo+ID4gSGFyZHdhcmUgbmFtZTogRmlyZWZseSByb2MtcmszMzI4LWNjIChEVCkKPiA+IHBz
dGF0ZTogNjA0MDAwMDUgKG5aQ3YgZGFpZiArUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBF
PS0tKQo+ID4gcGMgOiByb2NrY2hpcF92cHUyX2pwZWdfZW5jX3J1bisweDE2OC8weGJjOAo+ID4g
bHIgOiBkZXZpY2VfcnVuKzB4YjAvMHgxMjgKPiA+IHNwIDogZmZmZjgwMDA4MjE0M2EyMAo+ID4g
eDI5OiBmZmZmODAwMDgyMTQzYTIwIHgyODogMDAwMDAwMDAwMDAwMDE0MCB4Mjc6IDAwMDAwMDAw
MDAwMDAwMDAKPiA+IHgyNjogZmZmZjU4MmM0N2EzMTNlOCB4MjU6IGZmZmY1ODJjNTNlOTUwMDAg
eDI0OiBmZmZmNTgyYzUzZTkyODAwCj4gPiB4MjM6IGZmZmY1ODJjNWJiZTAwMDAgeDIyOiAwMDAw
MDAwMDAwMDAwMDAwIHgyMTogZmZmZjU4MmM0N2EzMTA4MAo+ID4geDIwOiBmZmZmYTBkNzhjZmE0
MTY4IHgxOTogZmZmZmEwZDc4Y2ZhNDE2OCB4MTg6IGZmZmZiNzU1YjA1MTkwMDAKPiA+IHgxNzog
MDAwMDAwMDQwMDQ0ZmZmZiB4MTY6IDAwNTAwMDcyYjU1MDM1MTAgeDE1OiBhN2E2YTVhNGEzYTI5
YTk5Cj4gPiB4MTQ6IDk4OTc5Njk1OTQ5MzkyOGEgeDEzOiAwMDAwMDAwMDUxZWI4NTFmIHgxMjog
MDAwMDAwMDAwMDAwMDBmZgo+ID4geDExOiBmZmZmYTBkNzhkODEyODgwIHgxMDogZmZmZmEwZDc4
ZDdmYmNhMCB4OSA6IDAwMDAwMDAwMDAwMDAwM2YKPiA+IHg4IDogMDAwMDAwMDAwMDAwMDA2MyB4
NyA6IDAwMDAwMDAwMDAwMDAwM2YgeDYgOiAwMDAwMDAwMDAwMDAwMDQwCj4gPiB4NSA6IGZmZmY4
MDAwODAxMGQwMDAgeDQgOiBmZmZmYTBkNzhjZmE0MTY4IHgzIDogZmZmZmEwZDc4Y2ZiZmRkOAo+
ID4geDIgOiBmZmZmODAwMDgwMTBkMGY0IHgxIDogMDAwMDAwMDAwMDAwMDAyMCB4MCA6IDAwMDAw
MDAwMDAwMDAxNDAKPiA+IEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBc3luY2hyb25vdXMg
U0Vycm9yIEludGVycnVwdAo+ID4gQ1BVOiAyIFVJRDogMCBQSUQ6IDgwNCBDb21tOiB2aWRlb3Rl
c3RzcmMwOnMgTm90IHRhaW50ZWQgNi4xMi4wLXJjNSsKPiA+ICM1NAo+ID4gSGFyZHdhcmUgbmFt
ZTogRmlyZWZseSByb2MtcmszMzI4LWNjIChEVCkKPiA+IENhbGwgdHJhY2U6Cj4gPiBkdW1wX2Jh
Y2t0cmFjZSsweGEwLzB4MTI4Cj4gPiBzaG93X3N0YWNrKzB4MjAvMHgzOAo+ID4gZHVtcF9zdGFj
a19sdmwrMHhjOC8weGY4Cj4gPiBkdW1wX3N0YWNrKzB4MTgvMHgyOAo+ID4gcGFuaWMrMHgzZWMv
MHg0MjgKPiA+IG5taV9wYW5pYysweDQ4LzB4YTAKPiA+IGFybTY0X3NlcnJvcl9wYW5pYysweDZj
LzB4ODgKPiA+IGRvX3NlcnJvcisweDMwLzB4NzAKPiA+IGVsMWhfNjRfZXJyb3JfaGFuZGxlcisw
eDM4LzB4NjAKPiA+IGVsMWhfNjRfZXJyb3IrMHg3Yy8weDgwCj4gPiByb2NrY2hpcF92cHUyX2pw
ZWdfZW5jX3J1bisweDE2OC8weGJjOAo+ID4gZGV2aWNlX3J1bisweGIwLzB4MTI4Cj4gPiB2NGwy
X20ybV90cnlfcnVuKzB4YWMvMHgyMzAKPiA+IHY0bDJfbTJtX2lvY3RsX3N0cmVhbW9uKzB4NzAv
MHg5MAo+ID4gdjRsX3N0cmVhbW9uKzB4MmMvMHg0MAo+ID4gX192aWRlb19kb19pb2N0bCsweDE5
NC8weDQwMAo+ID4gdmlkZW9fdXNlcmNvcHkrMHgxMGMvMHg4MDgKPiA+IHZpZGVvX2lvY3RsMisw
eDIwLzB4ODAKPiA+IHY0bDJfaW9jdGwrMHg0OC8weDcwCj4gPiBfX2FybTY0X3N5c19pb2N0bCsw
eGIwLzB4MTAwCj4gPiBpbnZva2Vfc3lzY2FsbCsweDUwLzB4MTIwCj4gPiBlbDBfc3ZjX2NvbW1v
bi5jb25zdHByb3AuMCsweDQ4LzB4ZjAKPiA+IGRvX2VsMF9zdmMrMHgyNC8weDM4Cj4gPiBlbDBf
c3ZjKzB4MzgvMHgxMDAKPiA+IGVsMHRfNjRfc3luY19oYW5kbGVyKzB4YzAvMHhjOAo+ID4gZWww
dF82NF9zeW5jKzB4MWE4LzB4MWIwCj4gPiBTTVA6IHN0b3BwaW5nIHNlY29uZGFyeSBDUFVzCj4g
PiBLZXJuZWwgT2Zmc2V0OiAweDIwZDcwYzAwMDAwMCBmcm9tIDB4ZmZmZjgwMDA4MDAwMDAwMAo+
ID4gUEhZU19PRkZTRVQ6IDB4ZmZmZmE3ZDNjMDAwMDAwMAo+ID4gQ1BVIGZlYXR1cmVzOiAweDAw
LDAwMDAwMDkwLDAwMjAwMDAwLDAyMDA0MjFiCj4gPiBNZW1vcnkgTGltaXQ6IG5vbmUKPiA+IC0t
LVsgZW5kIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBc3luY2hyb25vdXMgU0Vycm9yIElu
dGVycnVwdCBdLS0tCj4gPgo+ID4gRml4ZXM6IDdjNjk2NjkzYTRmNSAoInNvYzogcm9ja2NoaXA6
IHBvd2VyLWRvbWFpbjogQWRkIHBvd2VyIGRvbWFpbgo+ID4gZHJpdmVyIikKPiA+IFNpZ25lZC1v
ZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4KPiBUaGlzIHBhdGNoIGlz
IG9idmlvdXNseSBjb3JyZWN0LCBiZWNhdXNlIG5vdCBjaGVja2luZyB3aGF0Cj4gcm9ja2NoaXBf
cG11X3NldF9pZGxlX3JlcXVlc3QoKSByZXR1cm5zIHdhcyBzaW1wbHkgd3JvbmcuCj4gVGhhbmtz
IGZvciB0aGUgcGF0Y2ghCj4KPiBUaG91Z2gsIHNob3VsZG4ndCB3ZSBpbXByb3ZlIGZ1cnRoZXIg
dGhlIHdheSBwcm9wZXIgZXJyb3IKPiBoYW5kbGluZyBpcyBwZXJmb3JtZWQgaW4gcm9ja2NoaXBf
ZG9fcG11X3NldF9wb3dlcl9kb21haW4oKSwKPiBieSAicm9sbGluZyBiYWNrIiB3aGF0IHJvY2tj
aGlwX2RvX3BtdV9zZXRfcG93ZXJfZG9tYWluKCkKPiBkaWQgYWZ0ZXIgcG93ZXJpbmcgdXAgZmFp
bHM/CgpFdmVudHVhbGx5LCBidXQgdGhlIHJlYWxpdHkgaXMgaWYgd2UgaGl0IHRoaXMgcGF0aCB0
aGUgaGFyZHdhcmUgaXMKYWxyZWFkeSBicm9rZW4uIEkgd2FudGVkIHRvIHByb3ZpZGUgYSBmaXgg
d2l0aCB0aGUgbGVhc3QgYW1vdW50IG9mCnJpc2sgb2YgYnJlYWtpbmcgdGhpbmdzIGZ1cnRoZXIu
IEknbSBvcGVuIHRvIHN1Z2dlc3Rpb25zIGZvciBmdXJ0aGVyCmltcHJvdmVtZW50cyBoZXJlLgoK
Q3VycmVudCBiZWhhdmlvciB3aXRoIHRoaXMgcGF0Y2ggd2l0aCB0aGUgZXhhbXBsZSBhYm92ZSBj
YXVzZXMKZ3N0cmVhbWVyIHRvIHdhaXQgaW5kZWZpbml0ZWx5LiBJJ2xsIHRyYWNlIHRoZSByZXR1
cm4gcGF0aCBhbmQgc2VlIGlmCnJldHVybmluZyBhbiBlcnJvciBvdGhlciB0aGFuIC1FVElNRURP
VVQgdHJpZ2dlcnMgbW9yZSByb2J1c3QKaGFuZGxpbmcuCgo+Cj4gPiAtLS0KPiA+Cj4gPiAgZHJp
dmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCA4ICsrKysrKy0tCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiA+IGIvZHJp
dmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiA+IGluZGV4IGNiMGY5MzgwMDEz
OC4uNTdlOGZhMjVkMmJkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hp
cC9wbS1kb21haW5zLmMKPiA+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9t
YWlucy5jCj4gPiBAQCAtNTkwLDE0ICs1OTAsMTggQEAgc3RhdGljIGludCByb2NrY2hpcF9wZF9w
b3dlcihzdHJ1Y3QKPiA+IHJvY2tjaGlwX3BtX2RvbWFpbiAqcGQsIGJvb2wgcG93ZXJfb24pCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXBfcG11X3NhdmVfcW9zKHBkKTsKPiA+Cj4g
PiAgICAgICAgICAgICAgICAgICAgICAgLyogaWYgcG93ZXJpbmcgZG93biwgaWRsZSByZXF1ZXN0
IHRvIE5JVSBmaXJzdCAqLwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwX3BtdV9z
ZXRfaWRsZV9yZXF1ZXN0KHBkLCB0cnVlKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXQg
PSByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVzdChwZCwgdHJ1ZSk7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4gICAgICAgICAgICAgICB9Cj4gPgo+ID4gICAgICAgICAgICAgICBy
b2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbihwZCwgcG93ZXJfb24pOwo+ID4KPiA+ICAg
ICAgICAgICAgICAgaWYgKHBvd2VyX29uKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgLyog
aWYgcG93ZXJpbmcgdXAsIGxlYXZlIGlkbGUgbW9kZSAqLwo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIHJvY2tjaGlwX3BtdV9zZXRfaWRsZV9yZXF1ZXN0KHBkLCBmYWxzZSk7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgcmV0ID0gcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3QocGQsIGZh
bHNlKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPgo+ID4gICAgICAgICAgICAgICAg
ICAgICAgIHJvY2tjaGlwX3BtdV9yZXN0b3JlX3FvcyhwZCk7Cj4gPiAgICAgICAgICAgICAgIH0K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
