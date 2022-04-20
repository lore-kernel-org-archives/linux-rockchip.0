Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71BBEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Apr 2022 23:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QErrvGcK1yuoM+7DRuCzSWBwPBVLLvvqPxbI8ugFO0k=; b=P1ud1rHdPNvsIi
	/ZJbvW/zcy0G3jwlwzNNlPrsn5BaZAyGTrGACX3RyYhk+bZEkZJyu+fwvP/wMYFUmCJabbJCIame/
	r4XNOju+IIeQFGkmWlXqxj81rGkAoHhPKBagxhr6LTFDq//mUvsqnR+WYXuC55XQ3UgkrbOsEUkVK
	PuembmnsrjIctCiZ9yxmrDao+Rmk9T9my3Z+HIXXi90HDfFELuLjXGEMYHrkJMYTAlkkA1JQ9J00v
	QjjuTqDcekhwSYLxtvoF9T2MgY1AuldiYFdpI/roFN14dw+Msc2ri4GtBksVvVlRcxQ1pkf8A+p0q
	TTDUeyRy58tfHYkiUANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhJYy-00Ap3V-27; Wed, 20 Apr 2022 23:16:44 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhJYv-00Ap2d-Dx
 for linux-rockchip@lists.infradead.org; Wed, 20 Apr 2022 23:16:42 +0000
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-2ec04a2ebadso34635727b3.12
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Apr 2022 16:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aFmFBsA1cs9S4lVVk9cY/Uysi3KqCoTo4QcygHCYv10=;
 b=CRk2JX7k4QtKNh5gdBexj/P58gfFbGrMpwUxFQEsg9r9e0s1mtcwdfXNg2FNMwa30q
 g8xeeZHEIWLzTMPh9xUXsWteUHiYaB1mr3jVsDBrwH2IOARUENMfleGPNj07OesxqbHa
 joQT/914UvMql0s5B63DBiJXhjznt23YxxTexEKWsfLF83s51FuxOlH5tcT0Z8J92AIp
 gWogEtssZlOQ4GsXC4ULYEe+Tona7hf0TBBx1xjnFX96yK+cere1oMC8pu1+SBlVMmV3
 3Y7yTBK6p+D/xkffWG+gXsK0PlLEureJvr4SBJxLl48PZfH1vVL7FAqsuuGD6tMHm3vi
 PRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aFmFBsA1cs9S4lVVk9cY/Uysi3KqCoTo4QcygHCYv10=;
 b=wmg3hfBME+DgV96Qe+iIimsDQoil938ezetyK7o0WbZwy20ianMSUlwP/2RagZ3DoL
 8mq4IuN58QPt65XLl2COiTLo6K2f68NOCX99pY1YlD94M1PHYG32c9xAdWOpUcrk8Emd
 r7+H3adX4CnSRMysgnx2i+EaOr8ILPfC/hJ7U18mBJJCWwDM7gDMMXezc9gAoUtHitLU
 7Y7/QJPb4EyBCYIpZn1vNg1lo4hPG88EWpRstE4OONjT1eei0BS9CdhBIEu21ZPyPfkE
 fK//H6mPnxdydh+WqR4mRcYcBtoo04zzesWKu4XjdeLZWJv0hjVPC1kd6Zr2QHot/pwT
 sqmw==
X-Gm-Message-State: AOAM532bDUSfFCt5vDy7H2E8zxxFRd733xFQc6yPzE8+BSdeveqDppXe
 AgJYXAHORTIBnE5accoDPW51aN7WNY3oeBa/fCnA+w==
X-Google-Smtp-Source: ABdhPJxJ7PaIeQo2UGPmAGzPpwrGzL9jce3UtLGr7yVoRBoeZcosvs9fVW74JLGfXPCXLZGMYCE3Xx0xdNmymoUc3+w=
X-Received: by 2002:a0d:e813:0:b0:2ec:1e83:e5f0 with SMTP id
 r19-20020a0de813000000b002ec1e83e5f0mr24272748ywe.151.1650496600144; Wed, 20
 Apr 2022 16:16:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220330133952.1949-1-jbx6244@gmail.com>
In-Reply-To: <20220330133952.1949-1-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Apr 2022 01:16:29 +0200
Message-ID: <CACRpkdY73vWUTVjQ2T7qgaHkaj36pLTAyk_KWBzB31EUSvBTyQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl: add rockchip, rk3036-pinctrl
 compatible string
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzk+dt@kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_161641_531513_E1F85E27 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Mar 30, 2022 at 3:39 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Add the compatible string "rockchip,rk3036-pinctrl" in already
> in use in rk3036.dtsi to rockchip,pinctrl.yaml.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Patch applied!
Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
