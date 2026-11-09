Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA950606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 20:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yahvskW7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LjL+all9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BzzeeEx3jq6bt9y2yfwzJ9i65VQ/wh06xrlWVKMbMaw=; b=yahvskW7gMUdcJUnAHaXOkPVTX
	p4X26EluKE/UNh3jYX/irrYbaXigjzHmJvFXJiDv313foqeZmiCgpI41LVksTr7FtkSuDEX/wuGai
	mqkwzPzHBulx2ZsrxQpu307TeY0TFOt75sVfAHHuiquAgm/zpU7nM7jMBCBZhwfM4VaSn1XWVFwIk
	5Nelv7k6qTdrlLaCFQAiMu7FPuJeb2ZR6yDmooBENKMCpBuGFcgaTxfGYSlRRvmACTeokt1uOJDCG
	ceauaX1aPYGwlZm4MKHE3tjIXk6C+RB0aEZ81eW0gGES8wnZegXJ7KbSWTL649xcvBFZUHZDPpTzW
	eU+rECjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQWIN-00000001gRU-0jiH;
	Mon, 09 Nov 2026 20:48:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQWIE-00000001gPq-3BxG
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 20:48:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id d2e1a72fcca58-8b5efadd183so605216b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 12:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794257322; x=1794862122; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HCOo5dIuLMc4cgUiAq1BDTXlWDL7LT0CiehKkG4T0q8=;
        b=LjL+all9ExEOV4mAtJICa7Oc1iTqej7cHDqW6mKbu3yEE/VwkmOZimMB/e+dicJ4qI
         ZhbXnC1VPOZ5d91SzDjIqI9t0n+tup1urb4wdwLdoXinUDQkl/3nERSfCOYp2d/x+G1L
         07qlVbq+sPHIiyiRZq4znYQ08aYKT+GYQYkiMq7GRza4ggUoYFMkKrZaGpSBXTMtuDD4
         9/ui4z81TtiPlhNpj6CT1pUmzSOQNKX85tcxUMhbOFAdF2iYLVd08eamqGJkX5pXHy5r
         D5Gx9knOmv1w4bWa4Tp1dPNqv8Wbo2zw97vNcV8oLmwtvDA2tf9l6WXj6mhpIpjoQshe
         HoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794257322; x=1794862122;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HCOo5dIuLMc4cgUiAq1BDTXlWDL7LT0CiehKkG4T0q8=;
        b=hxcSMRCsjfEWEORD1SS/Fuv6LqdXF4vCxj2uAfDA51r//sivt5B7dPkm08e3H2epF4
         jR2xmwQ31GXNWPut18xHlzG3hyIZM/dMHCJLC84dRJvhDIFfWzDFoVX8X00JELbpsaKr
         uuroLlhxrEsfepUqIz1IueGTOPjiZMWWdLzAXuXt3hBfJjtp01wXAwhvJpwZ2cVficrb
         ixhwF9OBUdtM0FEmidfpAjv34EkLF2KEKQ0XsyinCr2UIzUR4dGblVYkpkMdJYJgGJYB
         51/Pv+hUju00fBD3fqxwMh6bbB08T8acZ8Vyn6yKrf0n4ciF8VYXPitL7+4dqGXKrrJ0
         ywag==
X-Forwarded-Encrypted: i=1; AL+hErFUYaM04EvlhGbnC3HQQ/G9hriGQTJE4A2inmQ3BMoytSlnhQOsf0VThnPX0QI1NoFrt7PJ2XHUfYCx39S3uA==@lists.infradead.org
X-Gm-Message-State: APuU4Z//WD1N7oul3REU20sAGBT5uQx1dRpXH211t+BauM/TGkkxEIT1
	FtXivT5UIvQdMy6bCc1YbELnMNiWcpVwhW6WPeSEfvExXA00gIinPJqw
X-Gm-Gg: AYBFou0eiSN6jRBuVKX9O5zmaGrn79Oj2PBGOYmW+A50bUp223ma2RkAkdHZWdcAUC/
	aXdeBzT7YQqLl5YXiQkLHgMIgisi9RMjwcq0WfoReR5d8AA2UU9K2OVort+GBv7twRUEl8HXuOI
	E0C9kQ9f0X/zAWRq0VbaGeZF943v32YDu3RWwRXZ5u0oqzlVkH3xgcVnl4dFOMm+LS/B7+Afb1g
	IpG0dc7SZqbaNN1ijPtzdHJLn2unkMd/zicZCphsbKktVcBYvDySNMliIkCyaTb4G0X7/66lh4T
	nFvGrxmFpMj5rKfbokM9SYR87pRSXcq2HsAwrDva9xH95BPzLyvbVNh8yw2URafBs34rr14SMyC
	3S5w0NpmYdZkPyL05W/rmvWDyt5hbt2uhlTYdgcZzTA+yX2QAMTDXmR9iRPcldpzvyW/Kva67ie
	Rdoqb4ZhNwuvaGhvwX7iLE9xJ6VsYOMXNibGdyasWH7PiQf7jmsuyJPmK+JSCgAtl/WevWhkATs
	1HtW3675ZWGOjv7iuVphW4ft7I+sHPV29tHi/91t6ycZNGm4x/Jp3UkbdhScJ7q7+UlXsdkUFIl
	3/emb5CgJCVMwxBwpCzNUjCMOZNk+amc3+sJpEzY/3Cvfo6DmYn4C14=
X-Received: by 2002:a05:6a20:7f89:b0:3e2:8c23:4d6d with SMTP id adf61e73a8af0-3f172725e92mr417125637.15.1794257321733;
        Mon, 09 Nov 2026 12:48:41 -0800 (PST)
Received: from [198.18.0.1] ([45.95.212.227])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdd8d7b37casm129038a12.22.2026.11.09.12.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 12:48:40 -0800 (PST)
Message-ID: <9a73588a-f5ac-4c9f-bb83-97224173aee7@gmail.com>
Date: Tue, 10 Nov 2026 04:48:35 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: use rgmii-id for LubanCat 4 gmac1
To: Andrew Lunn <andrew@lunn.ch>
Cc: Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20261109191515.252449-1-cyan2254650260@gmail.com>
 <f2663951-aa1a-44de-87cc-8e7b105e1036@lunn.ch>
Content-Language: en-US
From: Pufan Jin <cyan2254650260@gmail.com>
In-Reply-To: <f2663951-aa1a-44de-87cc-8e7b105e1036@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_124846_443876_22A6B0F3 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-2.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi8xMS8xMCAwMzo1NSwgQW5kcmV3IEx1bm4gd3JvdGU6Cgo+IE9uIFR1ZSwgTm92IDEw
LCAyMDI2IGF0IDAzOjE1OjE1QU0gKzA4MDAsIFB1ZmFuIEppbiB3cm90ZToKPj4gVGhlIEx1YmFu
Q2F0IDQgUENCIGFkZHMgfjJucyBvZiB0cmFjZSBkZWxheSBvbiBib3RoIFRYQyBhbmQgUlhDLCBi
dXQKPj4gdGhhdCBhbG9uZSBpcyBub3Qgc3VmZmljaWVudCBmb3IgcmVsaWFibGUgUkdNSUkgb3Bl
cmF0aW9uLiAgV2l0aAo+PiBwaHktbW9kZSA9ICJyZ21paSIgYW5kIHplcm8gTUFDIGRlbGF5cyB0
aGUgbGluayBjb21lcyB1cCBhdCAxR2JwcyBidXQKPj4gZHJvcHMgfjkwJSBvZiB0aGUgcGFja2V0
czsgdGhlIFBIWSdzIGludGVybmFsIFRYL1JYIGRlbGF5IGlzIHJlcXVpcmVkLgo+IFNvcnJ5LCBi
dXQgdGhpcyBkb2VzIG5vdCBtYWtlIHNlbnNlLiA0bnMgb2YgZGVsYXkgaXMgMm5zIHRvbyBtYW55
Lgo+Cj4gWW91IG5lZWQgYSBwcm9wZXIgZXhwbGFuYXRpb24gb2Ygd2hhdCBpcyBnb2luZyBvbiBo
ZXJlLgo+Cj4gICAgICBBbmRyZXcKCkhpIEFuZHJldywKClRoZSBvbGQgY29tbWVudCB3YXMgd3Jv
bmcuIEhlcmUgaXMgd2hhdCBpcyBhY3R1YWxseSBoYXBwZW5pbmcgb24gdGhlCmJvYXJkLCB3aXRo
IG1lYXN1cmVtZW50cy4KCkNvbmYgQTogcGh5LW1vZGUgPSAicmdtaWkiLCBubyB0eF9kZWxheS9y
eF9kZWxheSBpbiB0aGUgRFQuCmR3bWFjLXJrIHByb2dyYW1zIGl0cyBkZWZhdWx0cyB0eF9kZWxh
eSA9IDB4MzAsIHJ4X2RlbGF5ID0gMHgxMDsgdGhlClBIWSdzIGludGVybmFsIGRlbGF5cyBhcmUg
ZGlzYWJsZWQuIE9uIHRoZSBib2FyZCdzIGRpcmVjdCAxR2JwcyBsaW5rOgoKIMKgIGhvc3QgLT4g
Ym9hcmQgcGluZzrCoCAyMDAgc2VudCwgMjAgcmVjZWl2ZWQsIDkwJSBsb3NzCiDCoCBib2FyZCAt
PiBob3N0IHBpbmc6wqAgMjAwIHNlbnQsIDE5IHJlY2VpdmVkLCA5MC41JSBsb3NzCiDCoCBtbWNf
cnhfY3JjX2Vycm9yOsKgIMKgIDExOAoKQ29uZiBCOiBwaHktbW9kZSA9ICJyZ21paS1pZCIuCmR3
bWFjLXJrIHByb2dyYW1zICgwLCAwKSBpbnRvIHRoZSBNQUM7IHRoZSBQSFkgaW5zZXJ0cyBpdHMg
aW50ZXJuYWwKMm5zIFRYL1JYIGRlbGF5cy4gT24gdGhlIHNhbWUgZGlyZWN0IGxpbms6CgogwqAg
aG9zdCAtPiBib2FyZCBwaW5nOsKgIDIwMC8yMDAsIDAlIGxvc3MKIMKgIGJvYXJkIC0+IGhvc3Qg
cGluZzrCoCAyMDAvMjAwLCAwJSBsb3NzCiDCoCBpcGVyZjMgVFg6wqAgwqAgwqAgwqAgwqAgwqA5
MjEgTWJwcwogwqAgaXBlcmYzIFJYOsKgIMKgIMKgIMKgIMKgIMKgOTQxIE1icHMKIMKgIG1tY19y
eF9jcmNfZXJyb3I6wqAgwqAgMAoKVGhlIHZlbmRvciBCU1AgRFRTIGZvciB0aGlzIGJvYXJkIGlz
OgoKIMKgIMKgIHBoeS1tb2RlID0gInJnbWlpLXJ4aWQiOwogwqAgwqAgdHhfZGVsYXkgPSA8MHgx
Yj47CiDCoCDCoCAvKiByeF9kZWxheSA9IDwweDAwPjsgKi8KIMKgIMKgIHJ0bDgyMTFmLHR4LWRl
bGF5ID0gPDB4MWI+OwoKVGhlIHZlbmRvciBjb25maWd1cmVzIGFuIGV4cGxpY2l0IE1BQyBUWCBk
ZWxheSBhbmQgUEhZIFRYL1JYIGRlbGF5cy4KVGhlIG1haW5saW5lIFJUTDgyMTFGIGRyaXZlciBv
bmx5IHN1cHBvcnRzIHRoZSBzdGFuZGFyZCAybnMgVFgvUlgKZW5hYmxlIHNlbGVjdGVkIGJ5IHBo
eS1tb2RlOyBpdCBjYW5ub3QgcHJvZ3JhbSB0aGUgdmVuZG9yJ3MKZmluZS1ncmFpbmVkIHJ0bDgy
MTFmLHR4LWRlbGF5LiBXaXRoICJyZ21paS1pZCIgdGhlIFBIWSBwcm92aWRlcyB0aGUKMm5zIFRY
L1JYIGNsb2NrIGRlbGF5IGFuZCB0aGUgTUFDIGRlbGF5cyBhcmUgemVybywgd2hpY2ggaXMgdGhl
IHRlc3RlZAptYWlubGluZSBjb25maWd1cmF0aW9uLgoKVGhlICJQQ0IgYWRkcyB+Mm5zIiB0ZXh0
IHdhcyBuZXZlciBtZWFzdXJlZCBhbmQgaXMgcmVtb3ZlZC4gSSB3aWxsCmZvbGxvdyB1cCB3aXRo
IGEgdjIgY29udGFpbmluZyB0aGUgY29ycmVjdGVkIGNvbW1lbnQgYW5kIHRoZXNlCm1lYXN1cmVt
ZW50cy4KClB1ZmFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
