Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D498EC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Mar 2023 11:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N59IkzpwdJNKFy9PO2YW5M5X8Z216skeT7pOftAabQ=; b=QLG1oXIWoD08If
	D7g7JbMZeh0WmKu0pSI5rYivxo+GCPnZO7RcDqxW0gIaPd+M0cfCTO5QTPvjecWlrQmd0RDpHspgU
	d/poA8ZS/Jg85GZR65BsZCM7gfx8n9NQccDp5J7fIAwgL0j8XPd0yAK2Ah86k4gqjwkk9K7AXz3vV
	Zh/NYnlG9WRsiah1EMIN9jJYOeG41bu9PPlZKuPwVujoeycIny9JMJF5Dhj3VEomx/al+jqSDWVVM
	EiazycRtUuAJABYS+RGPY9UbXS1ODatVPnoHNP1VhK6SnNY1pQVSt9J95HhdvZtRzNmoStyRXGYRm
	YDHcgZV1d2aRuKl89jjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxNU-000L1J-Gz; Sat, 11 Mar 2023 11:27:08 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxEM-000GdI-Eh
	for linux-rockchip@lists.infradead.org; Sat, 11 Mar 2023 11:17:45 +0000
Received: by mail-ed1-x536.google.com with SMTP id j11so30751757edq.4
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Mar 2023 03:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678533462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIoO6eL+tDM4AN7UrOlT9SrG65ZLyWOyL92QpqRTor8=;
        b=GvHggC9Rk4fo+TGm5lRLiXN3qBJV2sERDmgNKuAJmI+cZmCiobS/4GR/3IYlSKb7+3
         FJc4YTD5lkdKXivSJd1LviB8ZZxvTLwwoEf7S0TCub5RhcJZOhJmmJNzLV00a+ZDKVDv
         raO3I81Nf6ZZy+3OgBAZVf/mtjB4E/QcnPIj/GcvC0cdA1yIdwjY/bbfUacewkBJ77fz
         Yqg9Q4gkUTD98JLJOPhLouKIPahsQTBRJapNQd0dmKQy3L1CIBwfOr6vnWp9F0fnQY0/
         xVW1w273OFdu+3c9Po7ZvKX4abRvX1PGmKg9vxIGq5rdH+5pkrBNEk7ma5LrzJUIOjbo
         /wWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678533462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIoO6eL+tDM4AN7UrOlT9SrG65ZLyWOyL92QpqRTor8=;
        b=wpMpLeaqYfqK4UcSlL+jIK1AcYoATfl3qwKgNpkSOshWvphj4TOTW5Bpbb3lWs4kFt
         Y+EFanusHGJFEtW/XX74T41GImd3vEGvGAwzDrMl4fQHE4tPj/wEoU+NHRRHfOjg9hDM
         /Ak4UBYr+Xff5YvkfNaSagMfJKxhR3ZBBlefqMiGdbsjpi0b2K2wHv9bdqBXSRJqEMBU
         DIZJfzACFq7A40WEKvBvFT5gM/pab/rE0c2dxhwY2XdaooRvWJBEnwJlPbTj3mzlvg70
         8I1jbIrXDmNrzQ0Bqo2H5uQfSXNrYiVOG9es1he/D+bBLIzDaA68bKTT1TwlNkrJ+32Z
         zv8Q==
X-Gm-Message-State: AO0yUKVbYaKk2WWZIiVqUj4fi1wRgLJsu+wSK2AgWtPt0EjHvhLAQg4G
	IL5HdYH7x/sN15IdFzAKMbSiPw==
X-Google-Smtp-Source: AK7set9jkO2NlkNHaYb5x/nRZfwPNzWxyfqanMxs1WiUEpkgYaf2NFWZ9/s7vVPeNa53couZfE0xug==
X-Received: by 2002:a17:907:d308:b0:8b1:3a1c:3174 with SMTP id vg8-20020a170907d30800b008b13a1c3174mr29519973ejc.77.1678533461907;
        Sat, 11 Mar 2023 03:17:41 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:fa97:2d7c:bdd7:e1b])
        by smtp.gmail.com with ESMTPSA id w5-20020a170906b18500b0090953b9da51sm971529ejy.194.2023.03.11.03.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 03:17:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] mailbox: bcm-pdc: drop of_match_ptr for ID table
Date: Sat, 11 Mar 2023 12:17:39 +0100
Message-Id: <20230311111739.252080-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230311111739.252080-1-krzysztof.kozlowski@linaro.org>
References: <20230311111739.252080-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_031742_542341_5A96BC91 
X-CRM114-Status: GOOD (  14.15  )
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
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL21haWxi
b3gvYmNtLXBkYy1tYWlsYm94LmM6MTQ3NDozNDogZXJyb3I6IOKAmHBkY19tYm94X29mX21hdGNo
4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1d
CgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9tYWlsYm94L2JjbS1wZGMtbWFpbGJveC5jIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tYWlsYm94L2JjbS1wZGMtbWFpbGJveC5jIGIvZHJpdmVycy9tYWlsYm94
L2JjbS1wZGMtbWFpbGJveC5jCmluZGV4IDhkM2E0YzFmZTc2MS4uOGM5NWUzY2UyOTVmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL21haWxib3gvYmNtLXBkYy1tYWlsYm94LmMKKysrIGIvZHJpdmVycy9t
YWlsYm94L2JjbS1wZGMtbWFpbGJveC5jCkBAIC0xNjM1LDcgKzE2MzUsNyBAQCBzdGF0aWMgc3Ry
dWN0IHBsYXRmb3JtX2RyaXZlciBwZGNfbWJveF9kcml2ZXIgPSB7CiAJLnJlbW92ZSA9IHBkY19y
ZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJICAgLm5hbWUgPSAiYnJjbS1pcHJvYy1wZGMtbWJveCIs
Ci0JCSAgIC5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihwZGNfbWJveF9vZl9tYXRjaCks
CisJCSAgIC5vZl9tYXRjaF90YWJsZSA9IHBkY19tYm94X29mX21hdGNoLAogCQkgICB9LAogfTsK
IG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIocGRjX21ib3hfZHJpdmVyKTsKLS0gCjIuMzQuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
