Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B5CC6FA82
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 22:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5t2IrvsPecDzUBtkLcb2Dz4cJvlDJnxcSQtR51gPbY=; b=iUrp7nWJopxyN6
	lXoOpYcRqHm9JHwzHHSa92QFcFB66tn1UBvcavDD8rOqnh+4ivzY2qX/XkvRjEDYcsR01ndAo6S2M
	hxwXNj7q5AlhBspPcsHQyEAhvuH7oZlw5YXJ733i1NveeR/HPUU3trrSo0EgaoT4kbdZsrqha7yQY
	4mMAFuvGZhM1UThaZInKu90QC9CG9bq6xs5EEyZK+h/caghf+Hn77ac6q4NF3wg9VXPvKiFx6kqSz
	c7k1B4DGU8zB7SO+2gYlM/hWYQ3eFGd5GpP7+M/HkXZAEoV+/a6gFMj9NbLLcTANFhYKoRN5giRuh
	Zj4sLkCW/lz6y6d/+Nrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYb7J-00BWgX-0e; Wed, 14 Sep 2022 22:44:25 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYb7H-00BWfD-5P
	for linux-rockchip@lists.infradead.org; Wed, 14 Sep 2022 22:44:24 +0000
Received: by mail-pj1-x102d.google.com with SMTP id i15-20020a17090a4b8f00b0020073b4ac27so15773872pjh.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Sep 2022 15:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=sG4BoPjz3e0C1eNVOCbe3XTFIwC27NVv9II1vqkhBzU=;
        b=egbvshYQ7PhrCmmQJ075kMdOFDDe3HbCrbPAzU4N7wm3xIVLSn3FY2NwJllG+vOH2Y
         cfsytFveVVA76ltMYro/rPbqsT5qasiJrLGV06HXsjPbVlCelxfgW+1TeQRgLDieYUs/
         fSIHFafGEDMeum17aLYPRphQAQbAyOw5sFwWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=sG4BoPjz3e0C1eNVOCbe3XTFIwC27NVv9II1vqkhBzU=;
        b=ba8BgYlYdd3i0h/Jn7wLWximev1AqVTiosi7kggoZROyWotPCqEfe4yvpM7f9jbEHB
         5Y9Ui+oqTb47ae3fNOmeTRnh1P/JK/deEe4w37WrQbrp7/oS9xPTnxBDwSB+s6rDZ1MN
         Zr4MzrqNjMjVaTwWcP3mgmnaJ0yhWzty4jCldIw2TY2GntLatogNy3gAm6eh+5OhW8ik
         I6D0gx1K34PMFKonf0D6V7RwH6uG37DwFTGE52wWgtluJhWRzEtES6IuXzjFxCli9rdp
         3eG8NbbmUuD0sNBpQPvPFxfQmiqfkM9TsDivjOQM04sOB0rx/kHPwAh41+Bkic5k1f5k
         ojjQ==
X-Gm-Message-State: ACgBeo0hHHRolnueVKqu6pu5Qc+pjHlv/m3ibWQxDgW2f2wy864rLInT
	XHA4Mh15clGEI/N92xzd+U5SoA==
X-Google-Smtp-Source: AA6agR6BJK39kIszlvDaPT1D98yFN2nfwJm8G/GuZYjFwhHiuy8VicYOPBae1seWlmxlUZK/eZORTQ==
X-Received: by 2002:a17:90a:d804:b0:202:f247:91b0 with SMTP id a4-20020a17090ad80400b00202f24791b0mr7319391pjv.8.1663195461789;
        Wed, 14 Sep 2022 15:44:21 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:c963:b4c8:c1a:85f6])
        by smtp.gmail.com with ESMTPSA id x1-20020a170902ec8100b0017854cee6ebsm2981009plg.72.2022.09.14.15.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 15:44:21 -0700 (PDT)
Date: Wed, 14 Sep 2022 15:44:18 -0700
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4}
 variants
Message-ID: <YyJZQuw5aQKbW9K/@google.com>
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_154423_230385_858DA8C3 
X-CRM114-Status: GOOD (  12.34  )
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

On Wed, Aug 17, 2022 at 12:33:55PM -0700, Brian Norris wrote:
> The Gru-Scarlet family includes a variety of SKU identifiers, using
> parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> different manufacturer names) also use the Innolux display.
> 
> For reference, the original vendor tree source:
> 
> CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> 
> CHROMIUM: arm64: dts: rockchip: scarlet: add SKU0 device tree
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/9987c8776f4b087d135d761e59f7fa6cc83fc7fc
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Ping. What's happening with this? I got one non-actionable comment (that
I replied to), but I can't tell if this is just waiting on Heiko to pick
it up, or if it needs a DT reviewer.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
