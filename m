Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10ABBC54EAA
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 22:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf2z8xxioWE/4Dw3iXMQIftxB89e1UqZT+0mEBmepW8=; b=PYmjtESSZvkap6
	IfCQEgv+2gN2Y6uuMY20u3rJ5kzeOvc+tgvpRH1+Q7QDLb1qE9QxkHXAXweZ0K4WzHry3qTZ0zn3+
	SjUGNVmmEKuNNoELgHFzGqc8PKVIh41Op2IV9JVEVfJPfpVSqL9uW2XrM5NFiYLtBdosEJSPr/n8h
	WfLeY9lW1/8oGV+mGvhfL4BQdMn5s6/9opTXf/Vf1hDE6vSPsjo0wk5Bgf4Mv14+lpcTGcwjBGufR
	UqcPrSKXGHI7K1gdNj5EK8OAbWjUdIEGWBjl7UVbh5qgJLxYsVNZjKouBtkGsQaqaJezCHA4Kou5X
	KvLn+YTdHTrfmGrsw8Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMch6-005ejj-9n; Mon, 30 Jan 2023 22:32:08 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMch3-005eig-5p
	for linux-rockchip@lists.infradead.org; Mon, 30 Jan 2023 22:32:06 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-506609635cbso180339527b3.4
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Jan 2023 14:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=skjZ7zrvUldsqxQv6fmmWTawDIpJ/RoIfn/nYqoiZWo=;
        b=QEXdNuQ5hEhdsUEfuwdYpdcQhRoLW1LDmoXD0oDISEYinsMExRfUf36mW72+XcfUII
         5LNaCLyDswzhEuTzgX+WblZ1/EPgqFJ8F6dpm45eX/5xfN85/ZP0aNBOh+uy0JWhSde7
         zfvUQNj5WrrsMkIblZ/s66loaAFhIgWSOLZbL3TAdrd215HVVV4A1i1q2MgUtJbN2sOa
         eFg10oQh+JY5wP7JrRmblExDjUIL2fhzNKw+D7PbLkcIXWAv2i8per83fJ+whffB024i
         pZ9Tkwtigo7SXwbV5bhwzK1ct/53Zj6YUl1sNnkb5KqP8FtCg6t84j1AV76Fti2YLfNA
         zBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=skjZ7zrvUldsqxQv6fmmWTawDIpJ/RoIfn/nYqoiZWo=;
        b=xE+UgGObo4dXZmV15lRDHH9OLx/0EzGu/1qalHB2qE0XH1hU82bMtmk8Yc5emP0kOU
         Jr6UHtC8jgVX3u8OMRxaz/gEI2sJM4jF3sGa+LG00B+RgEprDoHH/WCQ0Uwx5pdUBZRA
         wbu5AY/OeIkQiR8UuUDKBWB1sNr3SasU34l1t4zardeZ+itgWQB7/DApX+q7RowC347o
         bC0cvTVgeAvC8QYYg+EwjhIlGuFlOwEoIiD84gsCgV2jOMsDVafq0+PiN8TN91iL2qW3
         YF8IqDu4GkRT7NpePI5ErIuGkE79Tv0ld5xmOg1s9ZbrWwfYxFb/c3OARTNJazkNC/tS
         c/hA==
X-Gm-Message-State: AO0yUKVRqFLLSFu315bMw1ObQjyAHMjIyvmguxEIDbdDxIB8aasZnZBc
	o2PQg/4L+nzUU8Oqu1YXeIlygZnUm/Ta2IwpzaRHFQ==
X-Google-Smtp-Source: AK7set/ouXAVankrNwYj1xEQDazhfSPde9attbZo+h9D0l5ir656lWUIhIQ+1oQuF+L7x/AYiQCqqerKSFPkyPayHpk=
X-Received: by 2002:a0d:e701:0:b0:506:66f5:fd24 with SMTP id
 q1-20020a0de701000000b0050666f5fd24mr3154161ywe.130.1675117922613; Mon, 30
 Jan 2023 14:32:02 -0800 (PST)
MIME-Version: 1.0
References: <20230127181244.160887-1-sebastian.reichel@collabora.com> <20230127181244.160887-10-sebastian.reichel@collabora.com>
In-Reply-To: <20230127181244.160887-10-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 30 Jan 2023 23:31:51 +0100
Message-ID: <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com>
Subject: Re: [PATCHv6 09/11] pinctrl: rk805: add rk806 pinctrl support
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	shengfei Xu <xsf@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_143205_242048_8018D575 
X-CRM114-Status: GOOD (  11.52  )
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

On Fri, Jan 27, 2023 at 7:13 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Add support for rk806 dvs pinctrl to the existing rk805
> driver.
>
> This has been implemented using shengfei Xu's rk806
> specific driver from the vendor tree as reference.
>
> Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Is this something I can just apply? I haven't had Heiko's review
on it but it looks innocent enough.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
