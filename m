Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF0FC6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPetQVA9kwJSjEmlbM7jXJOZ63M+EpvbbZAOi8lk4Yk=; b=tjTh20F9kdgJxD
	OMRPkfI1xsslne9iQqWJ3SQSRd0WKqrmCFdRpK9zY71RTFKb6X13BRFPSaZnfHeu93PRKACgYqXvb
	nnrCXokO9Mey5OjYiXeFIVyJiP20RTLNoxFnN/s8KPdiGQ9pWK+089ysHH8ZPKT9N5pwWHtOiAM9N
	+BRQ/ssbGaFJN7TW8mYv13TIcprQltU7pmLkKrqzdKak6XcCLTfoJM92RWlhFsJ3ooL9NM9D2rSao
	+njQxZplfAEx/pRS+RyPd0J04gAqADkT+bO3sXnPOQyyF88jRskCtHFEVs0cN0znxOi4KR2VFRcoK
	VdmLf5AdsiTP7US2hNgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamDW-00Gcyi-NF; Fri, 10 Mar 2023 23:32:06 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEY-00GNgi-Q3
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:09 +0000
Received: by mail-ed1-x52b.google.com with SMTP id i34so26420344eda.7
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4hsdqWnTrZCw8a5RzNxKgld2eq5ESSNSd43t/rkHbA=;
        b=sQ9AnmWrtkGTib7XAuvnkd/mECJ9fJ3H135f812M5x+86PSP40RwLIlTRgQ1T4m70O
         /5u/uQm3FN3/qjs3kbzAn3amwi8BH54NeZ9ak/3qqOHRxONcHK+LS0jQ2lZFKn5gYTUc
         RpRtfSA2m+jUdaaoLfdezgQ0HnabwAw5Zd5UJ5dqV3uQXLsbWK3iN7ntET4GLmfonbHG
         HqTHQEpi57dXBQigF2FBMVwrXUfCvgWj/8SOoCpunzh11ZkB+PNH65nvKVZkueb62SGb
         mXX9xdEOWyKpvgeLMJaW+kaCM65dZySOzCAtYIZjl7k+9cAThGz1l/FTIQEQq4iT2/ER
         RJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4hsdqWnTrZCw8a5RzNxKgld2eq5ESSNSd43t/rkHbA=;
        b=cPmBbJIyiG7jblqM5D6BxWPtDPH2yzMQmfaOxRedg/7KoqawmT0Q9QLqGKYSppZDXW
         uDY/N7mubHGMbkdrqY5iyMPG8tY3m13czs01P5YR1PvC4QpE5A97lFbZillf1oAX3RkY
         77gIKb35qzYlEcEN+oHc/sS8UkaXDjofzLnpb3IF+yGc+QA6+v7DBgNdUc0bZM/OxKYg
         5VYXyrfOC/ypKSptSP1oCgpB7OcjBLwccUqayCOaPbLzFlt3C4NjT/G91HiqZDiloF5V
         +0c8oxw6DSh7gCl99EN8w8SWrw0NJf2mc8LVoSdZPVG6/+AfrE6fEEQF/zgbECDTBGXw
         sL9w==
X-Gm-Message-State: AO0yUKUTibufUzIIsL4aZlGbPw4LzZm7af+6RDqGbGIxhDBlYu/m4ofX
	M9ZsxGxGlIyPVRfF+X1FbndBnw==
X-Google-Smtp-Source: AK7set8req7DR8ncW0h8QB4fOrmA/Kz78djHJzJDXsGh0OSt5DpOgdDc5EHeCp2kQeLQUU4yam/Ccw==
X-Received: by 2002:a05:6402:2028:b0:4af:70a5:55ee with SMTP id ay8-20020a056402202800b004af70a555eemr23535448edb.3.1678487346365;
        Fri, 10 Mar 2023 14:29:06 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mark Brown <broonie@kernel.org>,
	Kamal Dasu <kdasu.kdev@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andi Shyti <andi@etezian.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 05/16] spi: orion: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:46 +0100
Message-Id: <20230310222857.315629-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142906_869545_5295F012 
X-CRM114-Status: GOOD (  15.54  )
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

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktb3Jp
b24uYzo2MTU6MzQ6IGVycm9yOiDigJhvcmlvbl9zcGlfb2ZfbWF0Y2hfdGFibGXigJkgZGVmaW5l
ZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1v
ZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9y
Zz4KLS0tCiBkcml2ZXJzL3NwaS9zcGktb3Jpb24uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3Nw
aS1vcmlvbi5jIGIvZHJpdmVycy9zcGkvc3BpLW9yaW9uLmMKaW5kZXggZTc5ZDFmZTBiY2E0Li5j
NjNiNzVjMTgyOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1vcmlvbi5jCisrKyBiL2Ry
aXZlcnMvc3BpL3NwaS1vcmlvbi5jCkBAIC04NTIsNyArODUyLDcgQEAgc3RhdGljIHN0cnVjdCBw
bGF0Zm9ybV9kcml2ZXIgb3Jpb25fc3BpX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFt
ZQk9IERSSVZFUl9OQU1FLAogCQkucG0JPSAmb3Jpb25fc3BpX3BtX29wcywKLQkJLm9mX21hdGNo
X3RhYmxlID0gb2ZfbWF0Y2hfcHRyKG9yaW9uX3NwaV9vZl9tYXRjaF90YWJsZSksCisJCS5vZl9t
YXRjaF90YWJsZSA9IG9yaW9uX3NwaV9vZl9tYXRjaF90YWJsZSwKIAl9LAogCS5wcm9iZQkJPSBv
cmlvbl9zcGlfcHJvYmUsCiAJLnJlbW92ZV9uZXcJPSBvcmlvbl9zcGlfcmVtb3ZlLAotLSAKMi4z
NC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
