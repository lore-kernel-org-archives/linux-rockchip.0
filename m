Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C3DC74A5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 08:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JgeZo20PEHAZ25xGn36diioRkdkCJDxTecbcURHGtc=; b=E2BieS+0vlCS0i
	SrlcayYZKXgi/W4g81fONOxiJd1flXQDfb77CiK4l/zcSfLWYzHCtC18RtARQykhFORYFuuOKvh6r
	7yPx3siwe+Dgdc3IBIQ/H7qB7AgmUMyRJqN8Zoftqin/Xn02aXow2q0MHlkzUEjJuU0VY83KZh6Ip
	g0BI5ItfRIwv7pki/zHrpaPDHoqP/GJ6EZ+IVC7MR2ZNXdkmkqUh1Ek+OXoiu8gD8nXLEBjtMvI4N
	WmQZsiYC4yXLwkckloc4ksmrYEWK2z0TzyNdC08gSRccmEzoSgumwpe0Dqul6VbVWwbTNebkHDbjK
	ybdnHubwBOFo9K1THJtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXFO-00BenW-30;
	Tue, 21 Mar 2023 08:21:34 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXFI-00BekM-3A
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 08:21:32 +0000
Received: by mail-ed1-x533.google.com with SMTP id w9so56464913edc.3
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Mar 2023 01:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679386885;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4gU5Ul5Pqtj2Zu4ilRhyv356GMLxKXORyaaNIGSfEx4=;
        b=KCVpYwy5GslZcg2w/pnsd8XD8fl9oI4gTI7eu3h/7VXuqpW8TQdXNDAK+sPofcAMdl
         ycbY9Xr/ULZro8rx4v9I3OHqiWPEUuAMOvfc2ZyO39n8Zrbsiky3tXod+YDFqwsXWgC3
         S34BMx+RCcIQ9vdtol3bHFe6wb5qZ+7vjw052gIrZbJob9mArZMAiHiPax3LRCNw/xgS
         jZjPnQylzihCDnVoOw4tPskB7fZD8ZKLiWh6LEyly9tD9N3Qf1s8y+TqjFVXBP2AGm9q
         mL31sS6a0lGd7StHZXAe3czDWmrdc3pwltw6CGcsCP8GUZPrcJffasoCBbGwipL5+2/s
         U3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679386885;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4gU5Ul5Pqtj2Zu4ilRhyv356GMLxKXORyaaNIGSfEx4=;
        b=RfUkWKb/qIsNbwtcA/AoSs8PmK1GH0YCDL/nqHjuwWG4SMtGWmCYM5Hh1z+BqCV9/A
         oE4cLigPqpaaqKK54FHAuZiKMxJ8NrFCBo+Fo7K2e8y/0ThjB93LomFBswJhgjve/90q
         w12IYXpq50WcWPcsmZ6QlX2rABIZxI/an3ttDWifHs/Q/c98DlMAzYOfebyY5PxgnX6r
         tQIdVqEpGph+7kwB6UKs2jITH3mQfClMZ/OCqe5Kwha3GDwz4SfnmoECNvlSyjx7uIRf
         b4itpvMM/ZqItN6kXHD91N2OxzapC8Hcv/Iac3IawEGTOlHkupV5fPQEccTgnadDIZFQ
         slTA==
X-Gm-Message-State: AO0yUKUUR6Hxc/BzdrP1shYGNX/m3aFNMOmWQsTL75twHSkeSIDj1s+z
	AcHG0mleoTPjKB71pM+aqwd/3Q==
X-Google-Smtp-Source: AK7set+6Sf7lskRnCtVXZF0F+OgifgUKEDMmWXjnbQFKwSnk5FABspDdYivaIjgEpa8Ajasi1pfhJA==
X-Received: by 2002:a05:6402:55a:b0:4fa:ada1:796d with SMTP id i26-20020a056402055a00b004faada1796dmr2339969edx.10.1679386885235;
        Tue, 21 Mar 2023 01:21:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id s29-20020a50d49d000000b004fc2a75c6b3sm5865294edi.23.2023.03.21.01.21.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 01:21:24 -0700 (PDT)
Message-ID: <8b7816b0-1daa-1c49-6f9d-40769d228a39@linaro.org>
Date: Tue, 21 Mar 2023 09:21:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 20/28] media: platform: jpeg: always reference OF data
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Joe Tessler <jrt@google.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jon Hunter
 <jonathanh@nvidia.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang
 <wenyou.yang@microchip.com>, Bin Liu <bin.liu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Yong Deng <yong.deng@magewell.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Prabhakar
 <prabhakar.csengg@gmail.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sean Young <sean@mess.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-rockchip@lists.infradead.org, oushixiong <oushixiong@kylinos.cn>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
 <86431868-488b-4a72-944b-231b6d0382b0@app.fastmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <86431868-488b-4a72-944b-231b6d0382b0@app.fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_012129_044918_2A9C7EE7 
X-CRM114-Status: GOOD (  13.88  )
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

T24gMjEvMDMvMjAyMyAwOToxMSwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBPbiBTdW4sIE1hciAx
MiwgMjAyMywgYXQgMTQ6MTMsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IFRoZSBkcml2
ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFibGUgc2hvdWxkIGJl
IGFsd2F5cwo+PiB1c2VkIGFuZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNl
bnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkKPj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4g
dGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4gIFRoaXMKPj4gYWxzbyBmaXhl
cyAhQ09ORklHX09GIGVycm9yOgo+Pgo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0
ZWsvanBlZy9tdGtfanBlZ19jb3JlLmM6MTg5MDozODogZXJyb3I6IAo+PiDigJhtdGs4MTk1X2pw
ZWdkZWNfZHJ2ZGF0YeKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCAKPj4gWy1XZXJyb3I9dW51c2Vk
LWNvbnN0LXZhcmlhYmxlPV0KPj4KPj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IAo+IEkgc2VlIG5vdyB0aGF0IHdl
IGJvdGggc3VibWl0dGVkIHRoZSBzYW1lIHBhdGNoLCBidXQgbm93IEhhbnMKCldlIGFzIHlvdSBh
bmQgbWU/IEkgY2Fubm90IGZpbmQgeW91ciBwYXRjaCBvbiBsb3JlOgpodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvP3E9ZiUzQWFybmQlNDBhcm5kYi5kZQoKPiBtZXJnZWQgYSB3b3JzZSBmaXgg
WzFdIHdpdGhvdXQgYSBjaGFuZ2Vsb2cgdGV4dC4KPiAKPiAgICAgQXJuZAo+IAo+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5n
aXQvY29tbWl0Lz9oPTRhZTQ3NzcwZDU3YmZmMDEKClVoLCBJIGNhbiByZWJhc2UgbXkgcGF0Y2hz
ZXQuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
