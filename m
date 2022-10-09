Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFD1C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIYm6mhLC/BsT5SyhTLZZZzIg69jrYnMEhCTpwQfhlg=; b=rA/wC1D51NAhEF
	yk1FX3GdmE7Am0sGNp6LHpXUOaITZR0jdrsouy7AWID1Z/l68VrNHs8Uu13bFywOtIA4w0sCAEcJa
	TeLJI4i5Xc7aOMMb5ZgEfafst9njCpkNGXFb9ifTrOvqf44tQ44NakMFgR4/hfim5xAt8ztfcz11I
	F2v63bwvJpiDkL5qNY72eg/DErb/d73LRPUY6HQNzrjhIDQCarCp9BAmBwOrNxHzOXPfrE+IQpWzm
	/jsmhgqZkxJ3r/kYwBub8Eq625ROla9EE1eyM3T6PAlPv/7sO+1nJk5fhBqKN2rgtDwovPHagnOCL
	7Z0qPk5Taop41t98iC+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohVO4-00FYbF-Ay; Sun, 09 Oct 2022 12:26:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohVNu-00FYa2-2p
	for linux-rockchip@lists.infradead.org; Sun, 09 Oct 2022 12:26:30 +0000
Received: by mail-wr1-x42b.google.com with SMTP id n12so13370724wrp.10
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Oct 2022 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hlXcRs60RYEj6e2wD9vIyzukIIABxZWYxN7fgKCTsyQ=;
        b=eetuNiD1hktoKah0VW9iHc2JsLHXb+xGYOP9Sge3XOqqSoCSYCwXej+8/6Jd3zV8Zv
         gdkSn0KePI9DqwalLxKu0eNWCQOSVElJm2IVYdcLQjI735/OluqOmYkaj6CWqdc64w+h
         9YkfCwl+yy5VWgGzxzXRTU69qWnyXfN/GUY5M+v7At+ewCrzT4UgkTMb56MGdcJ4cEG+
         XqebbdW3eoA1nc2eVAjUmLc+o2JnHPxkhpBYJPzv6pT0Kx/7/ivDqGlvD9czqZQ+cAjM
         iNX6ytp1vJZk4A+AgXYBOlWH2c4ydwPt6ACEoCDz7dN2GTucZT1261W3a4nU7UTK9YWw
         y56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hlXcRs60RYEj6e2wD9vIyzukIIABxZWYxN7fgKCTsyQ=;
        b=QoXTvqESoPBZnGneY+KxTjaE08SVWJCmVe7uAAp0+8VmI5PanfP3lgPgMsj9o+c6LG
         dWgh5yAzFLWbjAilr+Zkd73fAgmPq6NNvDk1WOa/QV5I7NGdd2cCVWekK6nUk2AZ8MAu
         UcZppvHphDRVSdzxf97lOSznBJFKnb18CnWSCpkq5bKQOoGlaXfWYhwXFDdG5SnEJ9pb
         dG408W8WB5YHl9yawZ/t77h9sTcUAgMdjFX7371iYd996in/zlCUUkNpu4UNmP20bKGT
         j7Ti0hrTCgU4qYMt7GZq/TvPZIAqMa+0nmQ9cTlO9xClnTvalY8UriJMIO9TuIE+qIi3
         7Gvg==
X-Gm-Message-State: ACrzQf142jvdfGPvrpZv91dOENKTnUbCW6ic0xWj6Lb+MP98KkAYMScy
	1VUvYPePY6AKnflgeZS4zVLadpJkG0BYfIr+fqY=
X-Google-Smtp-Source: AMsMyM7Pwr/2DHjg/XoIzsgabxI26Q/25BH4t91RmD8L2LASl/bAvEgdRt7hVeRv6hOnL2SEvfMZrhIxaaJxlZ+YKho=
X-Received: by 2002:a05:6000:144f:b0:22a:7098:6472 with SMTP id
 v15-20020a056000144f00b0022a70986472mr8783582wrx.685.1665318375054; Sun, 09
 Oct 2022 05:26:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-4-macroalpha82@gmail.com> <abba3972-fdd3-e783-8333-c81ed1f724e4@pscan.uk>
In-Reply-To: <abba3972-fdd3-e783-8333-c81ed1f724e4@pscan.uk>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 9 Oct 2022 08:26:02 -0400
Message-ID: <CAMdYzYqaxvNsCz5KwFeGH_BKN_A3qpOjjkz5pVVzvWDNEytvLg@mail.gmail.com>
Subject: Re: [PATCH V10 3/4] power: supply: Add charger driver for Rockchip RK817
To: Philip C <subs@pscan.uk>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_052622_167457_1144814D 
X-CRM114-Status: GOOD (  16.84  )
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

On Sat, Oct 8, 2022 at 2:31 PM Philip C <subs@pscan.uk> wrote:
>
> I have a question about the RK817 driver.
>
> In Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml it
> says:-
> "extcon:
>      description:
>        Phandle to the extcon device providing the cable state for the
> otg phy."
>
> In the context of an RK356x/RK817 based device, is RK817 an "extcon
> device" that provides the cable state?

In the Rockchip inno usb2 phy implementation, the extcon is an
optional property that depends on your hardware design. If you have
wired up the vbus det and id lines correctly and have a simple usb
port, then you can leave this property out and the phy provides the
state to itself. If you have a complicated design, such as a usb-c
controller, or either the id or vbus det lines are broken, you'll need
to provide the extcon with a pointer to the device that is providing
this state.

The rk817 is not a valid extcon provider.

Very Respectfully,
Peter

>
> should I have statement like:-
> &usb2phy0 {
>    extcon = <&rk817>;
> };
> ?
>
> or maybe it should be extcon = <&otg_switch> ?
>
> In the BSP kernels it's done the other way round with the charger having
> an extcon declaring a phandle to the phy like this:-
>
> rk817: pmic@20 {
>    charger {
>      extcon = <&usb2phy0>:
>    };
> };
>
> thanks, Philip C
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
