Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CF7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 22:15:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C12160EE3
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 22:15:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C12160EE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToF73rnjDddNPbsAJYhHfKOJKVvoHA4Rgr3DeYvwjh0=; b=MdermU7vrh3il9
	/Xv7D9ylubJ4pI07Qd21Q0Jt6bjZVVSM/UjVPHMzwZO7MAjx/RNtpDPFaDPRvOAa4X19i4GO3DEIy
	whBQguFYjEfoIo2DDsXoVRBd5hqBv+hg2hIxEpSAwQst8KcQNcoQC+VtK59jZFERabyIa5c9gzZbL
	4slh020NyZGPnRErtnDxPTCyYkbNq9aj+LDqzaowpEJi9p4leEUyM5bvzM3LxYhbi5yziTMqDrc6z
	BUFIU9FMMScslApUt4dXNJag1eMm6t6E34vJ0gWhPfPxVhEnNtYpuLRUqCzkEjOoR2CHdkCiO75QY
	4ZEqrfT9JG/o/oaCetmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbrxx-00BOr7-En; Sat, 16 Oct 2021 22:15:45 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbrxl-00BOpe-Et
 for linux-rockchip@lists.infradead.org; Sat, 16 Oct 2021 22:15:34 +0000
Received: by mail-lj1-x22c.google.com with SMTP id o11so978120ljg.10
 for <linux-rockchip@lists.infradead.org>; Sat, 16 Oct 2021 15:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWD1Wot4CiOZ5+nEEfKw3QurPlGi9CMDSa71U1t30+g=;
 b=IFM6ftu/K+rQCjJ2/RcVxwyvUdSlM2Md5Xbkm9vIoAkL0ZnaM3wk2YhonAjG+GMsTT
 o9lJwnq/rmMx9en1D1Z12Fbxvu53+CQZuyXgtQKM6RfWp1H9Pz3NWA74iL5sLWfsDrNC
 I73KCwAMn+p57HpNRZwtt9Iukx5z0L7Ltcqiw6Hmw7/HrsDKAHbegsI9nKq03GRAAZsm
 xaF7g2I3r0S6iDAkuQYK8jen+42FtM7HOiWZ+IUu8SfjY0wBAhA35yxSPc7SewGce8gP
 nRrejWkEWROopQn5fpLbvw5SOYC1CIt4El+8gNM3v8LuC2uuChD/XFv8O4YP7rVbuTkg
 lAzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWD1Wot4CiOZ5+nEEfKw3QurPlGi9CMDSa71U1t30+g=;
 b=ZGf3ERAbFCm+M+tf59B+5eUHa11r2fk/s9k2CYVp0Gbb5r7imr4W+hPoH+MJIAXWKh
 2xhkYIxjdZWljHahSVr1M1N4qOc1eqJD+FLGbslNzv3rnNlwy5ABJgpoWr7nlDbgfWqp
 aaj5LflP+8qLUeXXFmUxqbwAtoX55/6Pa5VxWs04BoBQAEe2lyoywBWN1PlSLmkUZGoW
 u9UNLW9TNbQ2E3lkbKjXfJb8xpr1HbAtz+s+XtsU089Ekng0FzRSykEOsj3HgaGFpy3M
 65sX+4zbd/G/nbhoL3MsUKpoN/BApCV6AMHEJtdoMIt4TKR4tXk3fTixOvoxETWbu+cM
 gf5Q==
X-Gm-Message-State: AOAM532gyLgncrhFWWRCPbAptEp18YRBnvr4od2ysNhGtCwRlQDajjj/
 VPIIRMIt5iCsrF2pN7g8OCooLoHAC4eAB2MJvq5B0w==
X-Google-Smtp-Source: ABdhPJzsvOIyKWJIPutTL9ipXbUxr8NKxnWe525hIO2sQaIGZxZYcmi2kIQf6tU76Sr0i+hc/mAvbIxzc/BitbUElDo=
X-Received: by 2002:a2e:b748:: with SMTP id k8mr22367942ljo.358.1634422527329; 
 Sat, 16 Oct 2021 15:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <20211007144019.7461-1-jbx6244@gmail.com>
In-Reply-To: <20211007144019.7461-1-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 17 Oct 2021 00:15:16 +0200
Message-ID: <CACRpkdZOvRjH4OuB=gwFBZj_kXt96dyX-DjK0HNjpV2fC36rLA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip, pinctrl.txt
 to YAML
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_151533_550781_5A464DBF 
X-CRM114-Status: UNSURE (   7.49  )
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

On Thu, Oct 7, 2021 at 4:40 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Convert rockchip,pinctrl.txt to YAML
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Patch applied to the pinctrl tree for v5.16.

Please merged patches 2, 3 into the Rockchip tree for
the SoC tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
