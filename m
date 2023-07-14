Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA35EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 05:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRkwV0N5ecZ44IZDTH/il2ZKzyW3jHBMxA1Kn3A1aRI=; b=DmLoHdcBgh72Y7
	Vb6jFU1OJMJiZ8CbXRps0V+m0970B2eCla1rSZmU8b0AcL1SMs3Xl7G0WYp0G3V90YFxwpWp4woMO
	eC314j7kPPeME+8FocXk5UJGkkYjMvN0Y4HyuS/DEPQN23biLPesPydJOJO6AQB8PChf1VgMuU51E
	QTfmO0vK6uLur2BpoCj18uC/JNf/YE2aZF1j1WrAs5WFCm492s+Gnsz+pnojdfUe35vmUnxwrCDPQ
	gJJYW/RR4D8Ner6y/5G+WMxq1vCzRuSSKgizYhzEFHqclX2tNVdgf0osEDVEwa8hb3pLL8kQBM29X
	Ub8KcLjkSUJFp4UNZ33w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKBM1-00549x-2t;
	Fri, 14 Jul 2023 05:28:33 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKBLz-00548G-0N
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 05:28:32 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-cae0ad435b6so1475884276.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 22:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689312504; x=1691904504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IFEjZXU3eSdRPNIXfyXM5z+iMQpziRAe96oQZyCPSwU=;
        b=PIcINIE7B3KCORiu+jwYAfyerDDtgsIlXu3t6O8YLprAwl7lcdjrGfRggkgqFK5TFw
         z2o4oLDtF8jhxZcU8+YMyFUwtei8PBoBXl9B1AmQakS551FlD24ZxV9czElWGwbZeCiF
         olzxTqQUr2AAbakkmwYbfmRIg5QLSrnDm1aiESeM2rv1L9AJNLqRuPFP6IQ8zZQdtanD
         uASvbtd9m1rQbWVSszCorK6Kyoz5uj1VqJ58AcCBEqoN+mnSFDxngTxI5ab4+/fnU48M
         DCwl7F67wv043k50515erRto+rn2TZcy5swlftLPmuwwSXWHx5Yv7s2Cq+asAaRtnkap
         7Eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689312504; x=1691904504;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IFEjZXU3eSdRPNIXfyXM5z+iMQpziRAe96oQZyCPSwU=;
        b=RpYEp9Q5gfPqdZqlWbJ9WGWTMAWRCupmT8Pc+tiX9v9Ca/8pZ/MwEtunk356N1os3+
         pXlPY3JoMN6uFfHcFgETBR1q7gzrzyuzvNWehY/XfG1dk0E7+pW230mFBg014VhPbPbl
         2sRDwXPEia4fWnCyo5bLWildIt4e8sGt5ULVD7vy+jRaNQN31tPNSDoBM43U0yxLIJBp
         6jbKSdCiTOvE6E8WAxxLephwqz/msyc7eWd9VA4W0cIN7iGHDQRjnCLPK7EiQ7NR30Az
         K6foY5mApu5An57/kzeIcxSeKA84ynsXuSueM5YtlKVSF7XAgByq/HAA0AsOCsu7y3h/
         LqoA==
X-Gm-Message-State: ABy/qLbdY9X0eyHekwEskP4HEIRLZl+0G1KQ9r+PVkoQG/SjsDVv2HQi
	M7g3UL9B8OR2xW6oBvjDSZ6I/eJbgohMmLZMqm+ehg==
X-Google-Smtp-Source: APBJJlEaiU/h7ySqTpivDQRsTd9uubAuwpwPzJ8MHaA57MOI8Wnpw21sa/tg3EBhmE4guSsrlJbZB3RuiOrWwKSQ4bE=
X-Received: by 2002:a25:d0d:0:b0:c61:e44d:c08e with SMTP id
 13-20020a250d0d000000b00c61e44dc08emr2990126ybn.19.1689312504662; Thu, 13 Jul
 2023 22:28:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230403193250.108693-1-sebastian.reichel@collabora.com>
 <20230403193250.108693-2-sebastian.reichel@collabora.com> <CA+VMnFz4USPcXmQMyUB9n5EVmvQrJARDvnpO7iBrXZ8q2xcyAA@mail.gmail.com>
 <20230713193812.px7q4sdfdppuywsg@mercury.elektranox.org> <20230714091150883537486@rock-chips.com>
In-Reply-To: <20230714091150883537486@rock-chips.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 14 Jul 2023 10:58:13 +0530
Message-ID: <CA+VMnFy0Uix64PxLECFK9D8KBF1o34yo3L1t1zQrhV+N2Dipig@mail.gmail.com>
Subject: Re: Re: [PATCHv2 1/2] clk: rockchip: rk3588: make gate linked clocks
 ignore unused
To: "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, heiko <heiko@sntech.de>, 
	linux-rockchip <linux-rockchip@lists.infradead.org>, pgwipeout <pgwipeout@gmail.com>, 
	"finley.xiao" <finley.xiao@rock-chips.com>, mturquette <mturquette@baylibre.com>, 
	sboyd <sboyd@kernel.org>, Boris Brezillon <boris.brezillon@collabora.com>, 
	linux-clk <linux-clk@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, kernel <kernel@collabora.com>, 
	Vincent Legoll <vincent.legoll@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_222831_154039_794F60AE 
X-CRM114-Status: UNSURE (   9.13  )
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

Hi,

On Fri, 14 Jul 2023 at 06:44, zhangqing@rock-chips.com
<zhangqing@rock-chips.com> wrote:
>
> Hi Sebastian,
>
> The clock needs to rely on two parent clocks, which is required by design.Refer to the attachment for details.
> Our internal branch is implemented using clk-link.c. Recently, I will implement the real GATE_LINK API according to upstream, without modifying DT.

Do you have a solution to share or any pointers? I tried to use
clk-link by dropping GATE_LINK from clk-rk3588.c however the issue
remains still as double-parenting is unsupportive. Did you add
double-parenting to the mainline clk tree? Other than that, I have
used existing clk and try to attach the link clock in conventional
clock way like

        vo1_grf: syscon@fd5a8000 {
                compatible = "rockchip,rk3588-vo-grf", "syscon";
                reg = <0x0 0xfd5a8000 0x0 0x100>;
                clocks = <&cru PCLK_VO1GRF>;
        };

This also seems similar issue.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
