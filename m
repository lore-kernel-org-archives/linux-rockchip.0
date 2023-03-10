Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B559C6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 22:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30EYM6t3L7n08nbw0eHYqVPOwXuDLhrsCdB0IQ4866Y=; b=fpCY9HXA7yvtlt
	7J+4SyeIUnITnxTz97rR8u4uZAnxoyWHW4OZs4b2X5FF4f9CDp0tnPhuTzVfqSlbQ9ZvdJ9L0NqBi
	1gsYtWZIo44sI26ZQOCo4yMYSzf4xh/+UKas9fEZGGiHE2vxsTjrNpEkleUg9Ue65UdhSl7XPoRdv
	a1zAm4fgZ+i1xw2XFc4KNqfeRJZTM/dHu2jNru9gtxggCOSC2CzMKjw2fN5FImfIBQgZG2lEEP4An
	M1b3UlRCfDU0SAFpnI5AV/zBF76tyYVsmHHz57knEPbqFhVxuXFJGSyrhfwDfwZFly9wjjUJUJtBZ
	L2oYT2rytN0qa7g4Q9XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palUn-00GTWC-Gq; Fri, 10 Mar 2023 22:45:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palUV-00GTOF-LR
	for linux-rockchip@bombadil.infradead.org; Fri, 10 Mar 2023 22:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=M3WdhQD5rAXvneo2z5R6lNFWc2ZYKuwan4rS9Bakw0M=; b=AtCwkXEpQpj40DxKiLHZrPcU2T
	PVAhWubAaRdm+jiI3LfH0x49tlrahWLQ+PYSOP6ONkmf4VFSJNWsOs/1NJg1ikmFI+KBO8+LjfJUd
	eU3N0o8+ADl3z5K5CdnldTlNzf+Y6pahzohC+J5BKlzJ6wBvpjmUF5RcfkwFMI1gkGPL/pEJJD4Rd
	smnk3JmQUZUhXnISuGJqtPoqg9QF9xuGRlSNrChys7Z4byiRllFJBUFv93WL4qS7iDcDF7BKs+as1
	4gVhXCgxIeq1Y8Cw+5dqCc2Tsw/dgqh79AfC6sFXXlJ7YUwMayuvKsOSNlKADPWZjbFnPk7YpUEqY
	0Lpnr9tg==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1palEk-000ap1-0q
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Mar 2023 22:29:21 +0000
Received: by mail-ed1-x52d.google.com with SMTP id i34so26421741eda.7
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3WdhQD5rAXvneo2z5R6lNFWc2ZYKuwan4rS9Bakw0M=;
        b=FH0mRWxSv3dhvkjeAGdGWC3XJUniNQrv9dUJ0DlkmSHDBsR1cMKPip4P5qxshWquPT
         o30zH/P6OAMsiqd3b0gJ9NO9k37kxCWE+3g5o0qJuGCMqEhIOhBWbVB55yR9EIYjwikl
         MUi7ljpJcIO9BHqSC8yhPoVOk7jtPv7Jy5AuYh0rPtyhy+iFBBXeYwq2rREH8uUGRdYS
         /P4xnqadCBAt+jcFiqqZPyh2zUeyHC2ZbAOtBHuovmw213/b91juyL9shSC7qo/JEzMk
         8aInCsXVd2L2IU6uBunWkv86D74zDz99X+zHVkraLs4W584lOZl9HtWsQzBPfqK2Xq7Q
         dqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3WdhQD5rAXvneo2z5R6lNFWc2ZYKuwan4rS9Bakw0M=;
        b=vl4lpc63PYpo2E9mcbtC67IxHaM8O9sMJ0q2pIdSQQupmOyXxU2+SQ6odP8PQENxQM
         MHn6aoDfh5S+KQcyc0lmK6unuqRhRbL0vnJfx/ffG1jRGj+V1mOXus/QhAQaifMsw8/z
         MRzlQ//ipFpgSik87duUvnelAOe3rw1zXU3t0NZrwbXedbf9HN0kDXEskgGWCZpMjht0
         ES3/W6Wf32JPzmWHbw9Ja1YqY8cguSuGi4LmkdWNcHmLfNX1Xn1XRUFQIn9seZ7k5hoN
         DBlIbq4dmYF4E49roN2O5J3cgulSf9lSI1U2WO5uAhBGKUUC6rRjzIspJUktRV51WQhd
         HeHQ==
X-Gm-Message-State: AO0yUKUj/JFwoCvgJNRt+lt433GYP1XdpFIOBMi1WDvgciFZA9OXj7Ul
	N9y8XpvdTKxHDbyfn7hfIPv+Ig==
X-Google-Smtp-Source: AK7set/aeDYIEUgYw5BDy72ya0/wLgG/2r8MQ4JILKTIDWdyXnTsT8LTeyXPCHZ13QKftG5RxlCVrQ==
X-Received: by 2002:a17:906:4e15:b0:883:3299:91c8 with SMTP id z21-20020a1709064e1500b00883329991c8mr26654805eju.55.1678487357988;
        Fri, 10 Mar 2023 14:29:17 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:17 -0800 (PST)
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
Subject: [PATCH 14/16] spi: sh-msiof: Mark OF related data as maybe unused
Date: Fri, 10 Mar 2023 23:28:55 +0100
Message-Id: <20230310222857.315629-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_222918_652793_CF408FAE 
X-CRM114-Status: GOOD (  13.39  )
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

VGhlIGRyaXZlciBjYW4gYmUgY29tcGlsZSB0ZXN0ZWQgd2l0aCAhQ09ORklHX09GIG1ha2luZyBj
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBkcml2ZXJzL3NwaS9zcGktc2gtbXNpb2YuYzoxMDc2OjM0
OiBlcnJvcjog4oCYc2hfbXNpb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJy
b3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3NwaS9z
cGktc2gtbXNpb2YuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1zaC1tc2lvZi5jIGIvZHJp
dmVycy9zcGkvc3BpLXNoLW1zaW9mLmMKaW5kZXggZDgyOGEzYjM3MGI4Li40MTJhYTE4ODJlNWQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1zaC1tc2lvZi5jCisrKyBiL2RyaXZlcnMvc3Bp
L3NwaS1zaC1tc2lvZi5jCkBAIC0xMDczLDcgKzEwNzMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHNoX21zaW9mX2NoaXBkYXRhIHJjYXJfZ2VuM19kYXRhID0gewogCS5taW5fZGl2X3BvdyA9IDEs
CiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzaF9tc2lvZl9tYXRjaFtd
ID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc2hfbXNpb2ZfbWF0Y2hbXSBf
X21heWJlX3VudXNlZCA9IHsKIAl7IC5jb21wYXRpYmxlID0gInJlbmVzYXMsc2gtbW9iaWxlLW1z
aW9mIiwgLmRhdGEgPSAmc2hfZGF0YSB9LAogCXsgLmNvbXBhdGlibGUgPSAicmVuZXNhcyxtc2lv
Zi1yOGE3NzQzIiwgICAuZGF0YSA9ICZyY2FyX2dlbjJfZGF0YSB9LAogCXsgLmNvbXBhdGlibGUg
PSAicmVuZXNhcyxtc2lvZi1yOGE3NzQ1IiwgICAuZGF0YSA9ICZyY2FyX2dlbjJfZGF0YSB9LAot
LSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
