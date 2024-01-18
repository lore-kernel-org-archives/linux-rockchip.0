Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76AAC47422
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 21:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1qUcbFKGabkHmObEICTXCJgnICoN0zGbTZBP4snwJE=; b=QsfxP/TpCLhIzv
	iTVaJ/FXc9RJ+z9yIxKxpOoig8hyy5Gk/nYH4lPmX+o+zjc0hOcEF2+oVQf9uio6Vdy0V4sO5+HXE
	40VjCgCvaDuT3BhlF05x3KIBsRoB1qdXzi5QG0Md/EiJgCGZP8BOp7UN7UQXwXAMuEcSCQKpo0EdA
	JlN/4ZtuAh8TowDvJAtPvY7NWFj81zfmQuIH58FB1OF3ly1Xbsls5/us6W5V2m30GSYw3RsObd96G
	EtF714xGYrN0xdPfxnxAQHcduvi9rRV1FNB+dec955MZKe0e5r55lF0sg9IQmUWV4OhsJM5BIoxUf
	jg4m5YUC0PLpE7u8EC2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQaJA-003wdf-1O;
	Thu, 18 Jan 2024 21:52:20 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQaJ7-003wd4-2P
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jan 2024 21:52:18 +0000
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6e0a89b98e4so104649a34.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jan 2024 13:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1705614676; x=1706219476; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nhk4KIpFoW3go0xMs8gft3n3SAiaXQPK/lZKUl9AxEY=;
        b=hsZGNNI7GiY686gJcJhoBhwv0urL6omQo96ZOni6b3KpHyMYz+iq4fXW/LNEPu8ebq
         F4RLgsssmb9KYrsgijshAjaKsGNcfuPOSeQBvW9zBYfmN1EAkus0zslzPdhW2p1BeJmg
         nY9AkHqPisgyd9YrpGZeVtTruGeR/kd7v6/kBJ4tflZOEhGAZf2mo1eIssShQHhy6xSn
         r/aHd5FtM09gjwVwESoTlRjXg7j+N7uflyO7q6Vt6JgkYqb+PuZvOu3ywoIY2EoUDRVG
         J55Q1SFpswjlLAowjA1u4VM83ugpISdWk3/KtqlQqw5vgFJCZ9QyYSTB3LblW+Y4gxev
         ElYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705614676; x=1706219476;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nhk4KIpFoW3go0xMs8gft3n3SAiaXQPK/lZKUl9AxEY=;
        b=p0CKKL6I9dKsMrz2ie47ePm9ywLQ4O5TcTqCXqP+27/Nic09u1eiw1H4SkH4ZtVgFh
         xNHWJ9WlnY+0Y58pSWlwdk1HH9ZoyA9d2zhz+FFdfcKPCjq5aeYoH2/1nc+jCZHhJysL
         Nv+tOkrzCe8eiWLrhdGVEjAlwVlnGoxShfWc5m4StbxQIV4BNB6iCRfbCY8O3Lq6mscT
         sVhIGiNxjyB8zqQuvL9dDx4ZO/fzrmFDNWk8L9eUqYTPFWQJ2UkZ6rAPoY/sEB+hZoNw
         dGYPcpTZjS8SFKuUbTNf96kyeDAH4diWhEOGD1BP1TmAVOKKKviziEWwAtLmJW8VmkT6
         hlCg==
X-Gm-Message-State: AOJu0YyENcMIomgfmc/+DiixStodTVy6ckFOmw2oHjsN7PEWokPpVmb3
	MudN+HN1cZ3QkrHPqo/xO/fPUNvMjAsJALmkg/ofMwsKizHJ0ytykowLXiJ9cEU=
X-Google-Smtp-Source: AGHT+IGgqtBGmFG8kvlkAhQYkj2Grg7+gfte7xCW9k695YvWwZSCXx/G6muSDjj4VaP+kGoVNbQmTA==
X-Received: by 2002:a05:6830:5:b0:6e0:c35c:241d with SMTP id c5-20020a056830000500b006e0c35c241dmr1508100otp.75.1705614676589;
        Thu, 18 Jan 2024 13:51:16 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id ge9-20020a05622a5c8900b00427b3271ab4sm7147198qtb.41.2024.01.18.13.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 13:51:16 -0800 (PST)
Message-ID: <fc225f62a8ec396eddb335a7d906d274802be3fc.camel@ndufresne.ca>
Subject: Re: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for
 RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, liujianfeng1994@gmail.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, elezegarcia@gmail.com, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Heiko
 =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,  knaerzche@gmail.com,
 krzysztof.kozlowski+dt@linaro.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 mchehab@kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring
 <robh+dt@kernel.org>,  sfr@canb.auug.org.au
Date: Thu, 18 Jan 2024 16:51:15 -0500
In-Reply-To: <2CFF2A39-6416-4599-AD32-E99EF95F5A36@gmail.com>
References: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
	 <20240118113051.10773-1-liujianfeng1994@gmail.com>
	 <2CFF2A39-6416-4599-AD32-E99EF95F5A36@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_135217_804327_69263375 
X-CRM114-Status: GOOD (  11.09  )
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

TGUgamV1ZGkgMTggamFudmllciAyMDI0IMOgIDE0OjUzICswMTAwLCBQaW90ciBPbmlzemN6dWsg
YSDDqWNyaXTCoDoKPiA+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IGFtYXppbmdmYXRlIDxs
aXVqaWFuZmVuZzE5OTRAZ21haWwuY29tPiB3IGRuaXUgMTguMDEuMjAyNCwgbyBnb2R6LiAxMjoz
MDoKPiA+IAo+ID4gQmVmb3JlIHJrdmRlYzIgbGF1bmNoaW5nIG1haW5saW5lCj4gCj4gT29vb28g
LSBpcyB0aGVyZSBjb25jcmV0ZSBwbGFuIGZvciB0aGlzPwo+IAo+IEFza2luZyBhcyBpbWhvIHJr
MzV4eCBjYW4gYmUgcmVhbGx5IG5pY2UgbXVsdGltZWRpYSBzb2MuCj4gCj4gQ2FuIGJl4oCmLiBi
dXQgaXMgbm90IGR1ZSBjdXJyZW50IGxhY2sgb2YgaGV2Yy92cDkgaHcgZGVjb2RlIGluIG1haW5s
aW5lIGR1ZSBsYWNrIG9mIHJrdmRlYzIgc3VwcG9ydAo+IFRoaXMgc2VlbXMgdG8gYmUgY2xlYXIg
YmxvY2tlciBmb3IgbWFueSBtdWx0aW1lZGlhIHVzZSBjYXNlcyA6LSgKPiAKPiBIYXZpbmcgcmt2
ZGVjMiBzdXBwb3J0IHZpYSB2NGwyX3JlcXVlc3QgaW4gbWFpbmxpbmUgaW1obyB3aWxsIG1ha2Ug
cmszNXh4IGtpbGxlciBzb2MgZm9yIG11bHRpbWVkaWHigKYuCj4gCj4gcHM6IHJrdmRlYyBzdXBw
b3J0IHNlZW1zIGF2YWlsYWJsZSBzaW5jZSB5ZWFycyBvbiBtYWlubGluZSBhbmQgd29ya3Mgd2Vs
bC4KPiBTbyBtYXliZSBya3ZkZWMgY29kZSBiYXNlIGNhbiBiZSBiYXNpcyB0byBncmFkdWFsbHkg
YWRkZWQgc3VwcG9ydCBmb3Igcmt2ZGVjMj8KPiDCoMKgCgpZb3UnZCBiZSBzdXJwcmlzZWQgdGhh
dCB3ZSBhcmUgc3RpbGwgdXBzdHJlYW1pbmcgSEVWQy8xMGJpdCBhbmQgNDoyOjIgc3VwcG9ydAoo
d2VsbCBKb25hcyBpcykgYW5kIGFyZSBtaXNzaW5nIGEgcHJvcGVyIHNvbHV0aW9uIHRvIHNvbWUg
bmVlZGVkIEhXIHJlc2V0IGxvZ2ljCih0byBmaXggY29uY3VycmVudCBkZWNvZGluZykuIFRob3Vn
aCBhbGwgdGhlc2UgZXhpc3QgaW4gc29tZSBmb3JtIGluIExpYnJlRUxFQwpwYXRjaHNldC4KCldo
ZW4gdGhpcyBpcyBiZWhpbmQsIEpvbmFzIHJlcG9ydGVkIHRoYXQgaGUgbWlnaHQgYmUgaW50ZXJl
c3RlZCBpbiBsb29raW5nIGludG8Kcmt2ZGVjMi4gQ29uc2lkZXIgdGhhdCBoaXMgaXMgdm9sdW50
ZWVyIHdvcmssIGJ1dCBpdCB3b3VsZCBpbmRlZWQgYmUgYW1hemluZy4KVGhlIEhXIHdvcmsgYmxv
YiBmcmVlIChubyBmaXJtd2FyZSBuZWVkZWQpIHN1cHBvcnRzIHVwIHRvIDhLIChyazM1ODgpLiAg
U29tZQplYXJseSB3b3JrIG9uIGFkZGluZyBlbmNvZGVyIGludGVyZmFjZSBmb3IgdGhpcyB0eXBl
IG9mIEhXIGlzIGFsc28gaW4gcHJvZ3Jlc3MuClRoZSBBVjEgZGVjb2RlciBmb3IgcmszNTg4ICh3
aGljaCBpcyBhIGNoaXAgZnJvbSBWZXJpc2lsbGljb24sIG5vdCBSSykgaXMKYWxyZWFkeSB1cHN0
cmVhbS4KCnJlZ2FyZHMsCk5pY29sYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
