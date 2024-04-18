Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15D8C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 17:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ede2IMxX+sJe2qg5lDQfSFCyoD+cLUxHlH7Lo9H/wU=; b=YWwmHuIiQRwdAu
	s0+ZN8WwzeB8CACNnK3zkT7HJLG8ydFUB5mwmozesAxlbbtWfRQZLIm7UGzehlzDusR1lrCR4g2rY
	CdIDfRSqiz9pyz5CebXP4XlOirsFMaqCECQgpf6zO4X8Mzz8WJXCo+5WsDLMWzKco87Wd21SMG3LI
	Ubf1v/LELgy4rRA+mpqrXgEIkaWhv2uw+ts0FnrqYBKFC+cofJG/AHa6O3+FFKAvVGG5eVsQbi6Ip
	EJ8g6anGOzhWJLpMpT8uOhArjrhJ1pnf6eBDtSjacPlpZaQgsdkV9LQL+k4K6rY4n2ruMsJWxymW/
	pQ3JQEnP8sIT/1ePOT2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVsO-00000003FUG-36Zx;
	Thu, 18 Apr 2024 17:48:48 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVsL-00000003FTb-1fEf;
	Thu, 18 Apr 2024 17:48:47 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-56e477db7fbso1935520a12.3;
        Thu, 18 Apr 2024 10:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713462520; x=1714067320; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y3ZdflAu0Ob9/HKHivhZRCDoMprpPAWFGSlHtfCLBBE=;
        b=CnyJlGfDp2l9sM02ZEHl1FQqZQ4eG8uvsHVi3KfCUKYFRPPDRpmgiDUQPq4XVQ8Sur
         Gz1CvsJRkL6/Gm47Fbwoy9rLUnvjmWh/hGYXTdV55uHzbsfkftQrvzpzBh9OFJfo7fS2
         dKuD2k3+woLBdPmlX2dlu3bPvFka/QbYO8q272yWf7QTbZI//vGo1dcv21aV1tkCUFHg
         qpLrxss4CL+0mjqx6wBVDobhyI3dXsWyBKtwoiwivADNj4z4DgNtSnyNOLRL2QdvuN+4
         2nm37Erljb6erZcxYoCqD/GKi35Vm/nnTGGZdYSgB4B/p1SaTjtyWZG/80QY7wn8qpZY
         yZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713462520; x=1714067320;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3ZdflAu0Ob9/HKHivhZRCDoMprpPAWFGSlHtfCLBBE=;
        b=eygg/t/lC7+qKQfXZpRCGvfCeh9Gff+C9rPtokNFzmiv2f/68swolt3NYmojxMgLDF
         eT3JEA1tm9BIQBgB10iera+22dWJjDyFJEKxd9m3Em+9mETEMyRAIU7UAJDq1LtuIk97
         WOWPt0DtyC3T00JI1bDQKLjyaO8FPkMPFk/sB+RFrdIgdE+zGo8pJLXH4BKa8O1TrSn7
         VvQHtEXxbwCQv0gPp1FBB5veA6vSAYPfwMfXOVYtrAD9WfNF4TtZZ13wNfZr6/ldUnGl
         rw6rhA1mGTTZGHC11DSFFovtcrAvrd0d7IlpE4KFskH2WhOgka4GNHbQlS12crNskRMk
         SXEg==
X-Forwarded-Encrypted: i=1; AJvYcCVCIsm//BCZ8BsxGoFmFRJABIq+GITYXrFXF6LdaHlBTK/JuZtRxuHBmG2T3+tm/kiPqoNf0vSZdeOXRxmZHFUcUXOa660AAtCahUoZiIGqVviqese8qd1gwCbX4AsEGeWphttcrwjIr657PZo2N9YNvrSvUF4eZjE=
X-Gm-Message-State: AOJu0Yw83LTO1pfgaArA1ZP2W6OSyhpX8w3lVKFuNYI/U3H5jGyF2JhC
	35ly1YhAisYPHhclbOfXErARIxEsu2LNyRsFXS+SxZlmkPy5p8KGj6no
X-Google-Smtp-Source: AGHT+IGrql4DRoEYWEVf0Y01BkNRtnQCtazPpJmoysmDk+TVKvk+4dGzYbR0/fAgoan3Y6zvVx4FeQ==
X-Received: by 2002:a17:906:2989:b0:a52:61b9:be48 with SMTP id x9-20020a170906298900b00a5261b9be48mr2321377eje.35.1713462520360;
        Thu, 18 Apr 2024 10:48:40 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:956c:b9da:b8bf:bdbc? ([2a02:810b:f40:4600:956c:b9da:b8bf:bdbc])
        by smtp.gmail.com with ESMTPSA id p8-20020a17090653c800b00a51a259fa60sm1167494ejo.118.2024.04.18.10.48.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 10:48:40 -0700 (PDT)
Message-ID: <177ca573-db4a-4106-b7b2-5ef82df64e03@gmail.com>
Date: Thu, 18 Apr 2024 19:48:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] pinctrl: rk805: Add rk816 pinctrl support
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <20240416161237.2500037-4-knaerzche@gmail.com>
 <CACRpkdYMZ7bBxKCSPJ74QYhtEPHV8cPARioGrg5ySj9j7nPE1g@mail.gmail.com>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <CACRpkdYMZ7bBxKCSPJ74QYhtEPHV8cPARioGrg5ySj9j7nPE1g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_104845_534412_14DEFDFB 
X-CRM114-Status: GOOD (  14.33  )
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

SGkgTGludXMKCkFtIDE3LjA0LjI0IHVtIDEwOjU3IHNjaHJpZWIgTGludXMgV2FsbGVpajoKPiBP
biBUdWUsIEFwciAxNiwgMjAyNCBhdCA2OjEy4oCvUE0gQWxleCBCZWUgPGtuYWVyemNoZUBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4+IFRoaXMgYWRkcyBzdXBwb3J0IGZvciBSSzgxNiB0byB0aGUgZXhp
c2luZyByazgwNSBwaW5jdHJsIGRyaXZlcgo+Pgo+PiBJdCBoYXMgYSBzaW5nbGUgcGluIHdoaWNo
IGNhbiBiZSBjb25maWd1cmVkIGFzIGlucHV0IGZyb20gYSB0aGVybWlzdG9yIChmb3IKPj4gaW5z
dGFuY2UgaW4gYW4gYXR0YWNoZWQgYmF0dGVyeSkgb3IgYXMgYSBncGlvLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPiBMb29rcyBnb29kIHRvIG1l
LCBpcyB0aGlzIHBhdGNoIHNvbWV0aGluZyBJIGNhbiBqdXN0IG1lcmdlCj4gb25jZSB0aGUgbWFp
bnRhaW5lcnMgaGF2ZSByZXZpZXdlZCBpdD8KVGhpcyBwYXRjaCBkZXBlbmRzIG9uIHRoZSBtZmQg
cGF0Y2ggYXMgaXQgaW5jbHVkZXMgc29tZSBkZWZpbml0aW9ucyB3aGljaAphcmUgdXNlZCBoZXJl
LiBTYW1lIGlzIHRydWUgZm9yIHRoZSByZWd1bGF0b3IgcGF0Y2guIFNvIEkgZ3Vlc3MgdGhpcyB3
aG9sZQpzZXJpZXMgaGFzIHRvIGdvIHZpYSB0aGUgbWZkIHRyZWUgYW5kIGl0IHdvdWxkIGJlIHBy
b2JhYmx5IHRoZSBiZXN0IGlmIHRoZQpvdGhlciBzdWJzeXN0ZW0gbWFpbnRhaW5lcnMgY291bGQg
YWNrL3JldmlldyB0aGUgb3RoZXIgcGF0Y2hlcy4KClJlZ2FyZHMsCkFsZXgKCj4KPiBZb3VycywK
PiBMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
