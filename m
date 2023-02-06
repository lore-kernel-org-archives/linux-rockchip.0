Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DF1BC05027
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 11:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQiGGN/R1GllBdTYJLV3J7oC2vI8wknWcEx1OwB30wM=; b=s4dcaw1oVDlI0M
	3Hm1QN7KwJrEGDFYYaDS1is1iYwpWxhGu/wBTkLegkGg9CCepM0XTYICptW6CQZxNIQBg1u+98aUV
	guZ3uMetSGRE4vIXG2+SSNI1i0NI+lOlbmriWblUQoeAqcPG60wAT4Mvsyy48WwbrUTCc5ZqT3hmT
	lPB6EAR+Fh9sKT7jyyeClkei43xBtqP+Q6Nyg5LyHOQuIq1Pd/DBG1Hi/s7ihiLBtiidQoa9NT8m7
	YhuXE61ohiZMcyrrH6d5vBjfuPL/KryyyvzMBldmeHIAdygUKvYOFmHySv31+crBPIP3Wl834wFcW
	TanEeNCpf04S3aOXEJ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOzeQ-008Hrq-7l; Mon, 06 Feb 2023 11:27:10 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOzeN-008Hpm-AI
	for linux-rockchip@lists.infradead.org; Mon, 06 Feb 2023 11:27:08 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-52a849206adso5373787b3.4
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Feb 2023 03:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GJR7iIBYxeHMKeEYc9yJlmGGl4YAGtrHLk1xmdfWkjY=;
        b=cEiqbsgShNHfgqVqwAK88z6dPmS5LNgW4KwIyRVk3eWmxUXP0lv1ECQABJxp4IuAW4
         08SmBAO/PDsRaPrMqDLjT3iOOCqXXb/OLe791QjQFGztN3jDiPclnERlhhuQg37GtVIK
         uruJuMVn/c+RFufhHvA1+2oVj6SHkahm3MvAtdj2UdPrjz981YKz03DmWmA/Mml3Ebo2
         vgLuq6z4a1wu8/LSs5sn3+RErEjRdU1L1PTnIJqzqC0aArFJrsaTANiqN1TlCwSK+P+p
         k+lZZZF0sQH3lVORlgXpVQUkbl1FE8R1/ZFV35uUjtD4VSBn4jrBaeuXzuqVkGAB60uh
         pFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GJR7iIBYxeHMKeEYc9yJlmGGl4YAGtrHLk1xmdfWkjY=;
        b=BBnKaRMjeF48/b1Did2VthmkbmSmGJLJb9LeAXU89yZWl+2P5gzRixl1N1UWdCRqa6
         qBg8ghJMmaFOld5lew+JAm1cf1or2gPMymiV0FSUeW7Vk7mbGgCia4C1R5t49p1b7Qxx
         DEtDXmpRaBz2d7whUBkcPfrqQo5AVmvkfk9bZWTtNvFCNvCOEuln2sF8JdWftMWfgOVd
         Vbvwn4AfQP+V7RUjfM8nkwSlkmBwiuDA48pf5ix050ulRGFQ/NoRaU7AT+EWwanQx1nn
         HCuvo8VHfOc3XWe1AJRYZAFMQc8XehRZfUhFqlNG4pz1VN1fZkRyg77kvtRtctGnTCzN
         MSZA==
X-Gm-Message-State: AO0yUKWZ7xpKe08i8Bs6d/7OTQCn+zeuIFdiMmSHvnEvCqPMCIXHxV3+
	jo0rh0o3QILgU4MgPl4vx/k0TZRFqKMNdKjaEYIVAg==
X-Google-Smtp-Source: AK7set8L3VLeOObm9qWRrIhVr41MTYoDvVibtG9Ay2RHWLmtjUwNSvhhckk7653hSCZoO5nkPQYJMfhJ+CrdMrR5rTM=
X-Received: by 2002:a05:690c:b18:b0:4f3:8d0e:edce with SMTP id
 cj24-20020a05690c0b1800b004f38d0eedcemr1702307ywb.185.1675682822071; Mon, 06
 Feb 2023 03:27:02 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com> <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
In-Reply-To: <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Feb 2023 12:26:50 +0100
Message-ID: <CACRpkda3TNyLqy5ZSKMsp8E+Tzys8o1h=q6qSoBCta+08BYZ_w@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: pinctrl: rockchip,pinctrl: mark gpio
 sub nodes of pinctrl as deprecated
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_032707_382847_F36114AC 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Jan 21, 2023 at 12:08 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Mark gpio sub nodes of pinctrl as deprecated.
> Gpio nodes are now placed in the root of the device tree.
> The relation to pinctrl is now described with the
> "gpio-ranges" property.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
