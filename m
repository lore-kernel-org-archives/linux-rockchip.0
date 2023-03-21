Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD778C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 08:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EOj86zNpMmAbnWycJELblnhQN4VVkoaXONbstTh+Xs=; b=aQwCOAlf5r4UVM
	DSiDPeAS6FmaFSzXxkBB0e5bPw3+mVvxgdkRGt7ZOXFTXPi+LCErmn1NPtXKJ6iouK/d9aAk2MgPC
	V2xHpxVVBnsZhQn2L9MD7Ei1qeeB4i3XSMK3hdf0/2o0E/dGN0OjyV95W9ya4/2YZmhk0FP6uCSD4
	gXueXSkwb542PdOyDHvSZpG8myT/0pQbgmkxqirRE1Vq2OvjdaPAx5Pi73ThBPLD++SQ2hVda+1Pi
	TZxDw98Ugzk/Sruy9v6B+RE0u/YbMDqZ9SneST83z0tMnh3Y+FOHKt7+1mQmzPVIv1HTMQnNHo6lV
	niGcWS3VvoEocLaJjNeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peXKL-00BfiM-2j;
	Tue, 21 Mar 2023 08:26:41 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peXKG-00Bff7-0H
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 08:26:39 +0000
Received: by mail-ed1-x535.google.com with SMTP id h8so56443491ede.8
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Mar 2023 01:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679387192;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0mTzuTr7Qws+cUrzbSI+C/8BpG+BCY4L1yCujqjQO80=;
        b=F0XMce0naaobBfyCQtabTxdjFlSDXtRsY59OVOruFSmpR9cvkfZ293h2nrTG5pheLb
         mjov15+plh04xZriyDiET4af/BfKT329TO0zZ4SaJ9WBsM6RqZczGF3VhRHnd+ZuO+oy
         gd0q56A62UfbLkchrVvemzOWkVE79g4EMJ5NoAUG4563Dcu4jB3ugwP5iSmX3KGkI9//
         NuEjyIQsXFxucDiGuD3faRv179z5sC1fFVnTfzU+HONr1V72R8uDwRyGkG4UuOYj9UZc
         WfHNAFeRmrZ/wnzOsH1VoKwOlBJAkNTN9ajSkqA/1FiYiAd2rYYHPPS9CqsbeXGUIpV5
         kFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679387192;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0mTzuTr7Qws+cUrzbSI+C/8BpG+BCY4L1yCujqjQO80=;
        b=khJ/rf4RdRbfd2blWgqFjwBGg7Jna3JEaIPBBwbankpvYE0OLSGQVgO6VZpmghhtAm
         JcLSbBJTUkelxNFZiz3o74YEEAh9DhyXbdwra/EdjOz0wBtK2QkBmz4lkr62gmvNo2ul
         pKPO4r6AwYhp2qQ3baXdWo5VwMTfEisRDIXKkp2O52R1pggUcSaC4QqPwXlbOnL4tbCl
         p3u93PW2z2KKwGvNNg7FzLdc5Y52uLDpB5jmfLeIdURtGk9k+olljzMv+75mFgYtFHdT
         loCVaToXFN/mOYnq6yFetLEVYe0TMksiPeAVNwpZybJwyzYvJDbyiYpBlWA80RMGzV8f
         vjtQ==
X-Gm-Message-State: AO0yUKVswsNbhOQBY6rGQ3k8v8ysjGGRC6DVGf1yt0/rpodSfOG045R/
	DNKc6CwT7VuGF+jmpunZzTxrfQ==
X-Google-Smtp-Source: AK7set+Yo3j0orRg0yJ8E1/dJwlIJ3rt2gBjk8VtlpRwTZcxqtlBtQSIoTar3pcg+04BUhx1cgL4AA==
X-Received: by 2002:aa7:d315:0:b0:4ad:738b:6706 with SMTP id p21-20020aa7d315000000b004ad738b6706mr2495618edq.2.1679387192285;
        Tue, 21 Mar 2023 01:26:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:2142:d8da:5ae4:d817? ([2a02:810d:15c0:828:2142:d8da:5ae4:d817])
        by smtp.gmail.com with ESMTPSA id z67-20020a509e49000000b00501dac14d7asm534626ede.3.2023.03.21.01.26.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 01:26:31 -0700 (PDT)
Message-ID: <676cb6ac-84a3-025f-bb05-55dd27c365fe@linaro.org>
Date: Tue, 21 Mar 2023 09:26:29 +0100
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
 <8b7816b0-1daa-1c49-6f9d-40769d228a39@linaro.org>
 <b9342459-efec-4e17-aee6-332ee17f44d2@app.fastmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b9342459-efec-4e17-aee6-332ee17f44d2@app.fastmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_012636_137600_F281BFF4 
X-CRM114-Status: GOOD (  14.00  )
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

T24gMjEvMDMvMjAyMyAwOToyNCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBPbiBUdWUsIE1hciAy
MSwgMjAyMywgYXQgMDk6MjEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDIxLzAz
LzIwMjMgMDk6MTEsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4+PiBPbiBTdW4sIE1hciAxMiwgMjAy
MywgYXQgMTQ6MTMsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gVGhlIGRyaXZlciBj
YW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3
YXlzCj4+Pj4gdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5z
ZSAodGhpcyBhbHNvIGFsbG93cyBBQ1BJCj4+Pj4gbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4g
dGhvdWdoIGl0IG1pZ2h0IG5vdCBiZSByZWxldmFudCBoZXJlKS4gIFRoaXMKPj4+PiBhbHNvIGZp
eGVzICFDT05GSUdfT0YgZXJyb3I6Cj4+Pj4KPj4+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
bWVkaWF0ZWsvanBlZy9tdGtfanBlZ19jb3JlLmM6MTg5MDozODogZXJyb3I6IAo+Pj4+IOKAmG10
azgxOTVfanBlZ2RlY19kcnZkYXRh4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIAo+Pj4+IFstV2Vy
cm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4+Pgo+Pj4g
SSBzZWUgbm93IHRoYXQgd2UgYm90aCBzdWJtaXR0ZWQgdGhlIHNhbWUgcGF0Y2gsIGJ1dCBub3cg
SGFucwo+Pgo+PiBXZSBhcyB5b3UgYW5kIG1lPyBJIGNhbm5vdCBmaW5kIHlvdXIgcGF0Y2ggb24g
bG9yZToKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLz9xPWYlM0Fhcm5kJTQwYXJuZGIu
ZGUKPiAKPiBUaGlzIGlzIHRoZSBvbmUgdGhhdCBJIHNlbnQgYmFjayBpbiBKYW51YXJ5Ogo+IAo+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDExNzE3MjY0NC4zMDQ0MjY1LTEtYXJu
ZEBrZXJuZWwub3JnCgpVaCwgdGhhdCdzIGZyb20gSmFudWFyeSEgSXQncyBzdGlsbCB3YWl0aW5n
IGluIFBhdGNod29yazoKaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0di5vcmcvcHJvamVjdC9saW51
eC1tZWRpYS9wYXRjaC8yMDIzMDExNzE3MjY0NC4zMDQ0MjY1LTEtYXJuZEBrZXJuZWwub3JnLwoK
CkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
