Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C68FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 23:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoNymgcEkSGn5M9wZ3IrFbSDMo+KQ7Ru9RmL8L3U1g8=; b=dPwZy7xelKTA20
	vuNJJEWMaNIoDYfsB03uWyrYORBMwLshLHZm1F0AwCicM+VHa1Jh3+sAYqii7cPAKWiwrfY8CEZ/r
	Bpeip9XbAFl0pBtRQhpgKc2MgY7y/LeGD6FXoj9Tu8Di9lYN38Ui09tpCe+fTSk/LJ7VZhIrjeFk9
	8wgEelRZnHjD2oRptZMfUDGbRKvyoqDe6z5PpL8pv+hCPeZLnFeHFFQdi4sTbCFMuOZP1J4UMXSVq
	C9dTh2zAKa7U13pCJfE/qozGnd508fxZqiONbKBFAOH5zCUsp+1zcNrFcDhcK5AAPEpf8yMBX/ozB
	4H5LxdO8xNE7lzcz1Gig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncyCx-001TZI-7f; Fri, 08 Apr 2022 23:40:03 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncyCv-001TYd-4z; Fri, 08 Apr 2022 23:40:02 +0000
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2ebf3746f87so17545047b3.6; 
 Fri, 08 Apr 2022 16:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CDYsEC3z7SNIXo2ZbPYZJ0K7GPHxLPSJLvLN0Mo6YeA=;
 b=SrtG1cIIGngnrFigTQwOPcRWD9gWwODKny8+yA2dRJ8NMUeLG7Z/Brj7jWL7ZAMLWN
 vgrZjOkmH+xgG24cFoDeVlBwgmDRmkulFpZ56fPpCYVJfch64Pxi513sZcjG/ZZbBAie
 KDrQmiXckMAjZazqTJD9fk8IQXb5qTn7NXYktG071Fxg6HPk2JbBJkz347bS9eqtFxbZ
 Qilaj/4T/7PrV8kzlgj28FnEyXSNjq1+l44cMWS1lSg4f1gI5HQ5xD2wHSC5J9/m27dQ
 +fPdnR5/PhF4abWi/Rdf29ODoItNuM/gwaqWPuyS3nxJxqQEssVCVVph9bMQTxpbUtxv
 goiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CDYsEC3z7SNIXo2ZbPYZJ0K7GPHxLPSJLvLN0Mo6YeA=;
 b=P9VBR0mi1mNgvXqSHRvYFhhFYl9m5dn8Ok8ECSn4imzh9XK1o5rvnFTpTOVJEcM3BC
 2OlogoXWue7KhhLrt3wFMiFuDEkPhJ4Uzv7kzMktYYoPWDDH4i6sOXfKtP0QfayWjJnE
 RokWXrDxzqGUgaFbmGH6DdoauiDpFs1vaANTPf/EquArHx3eaxmQ6CnZUYZi6B+EGhJc
 3xPIY+0XrkNnndbsDhNRbi0qry7MJyK22iklH2x1YQWkmK/5DRpIjVZKNnK8zbTcKZ2r
 4Ka867+1ao+456QsZi/X2SfWEongM3W06NjAKjawCARVnU1avqG7liGBkLM8FuzvxyPk
 hN2Q==
X-Gm-Message-State: AOAM5317huIBim/ZVTlq1XnK+o/EHAmXRZiLitAySqI0Las00pVODgyi
 GHKXVzEULQtovyNjg/qNuz9613gc0wGmcWEh8NncNupKP5dq2w==
X-Google-Smtp-Source: ABdhPJyGGqoOO05Ee10K3J4si37XiW9q1IlMMjK/151pERb6e4/d3IA3oUeJUT5N2Tc1vVQq+6pYokhAbTnYnN4lvaU=
X-Received: by 2002:a81:578c:0:b0:2e6:2488:7ef8 with SMTP id
 l134-20020a81578c000000b002e624887ef8mr18095272ywb.519.1649461199435; Fri, 08
 Apr 2022 16:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
 <20220408151237.3165046-4-pgwipeout@gmail.com>
 <trinity-3ae2b0d1-a3f0-4c64-acb6-2fb4fa0b36b3-1649434480623@3c-app-gmx-bap48>
In-Reply-To: <trinity-3ae2b0d1-a3f0-4c64-acb6-2fb4fa0b36b3-1649434480623@3c-app-gmx-bap48>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 8 Apr 2022 19:39:48 -0400
Message-ID: <CAMdYzYrK2KV1svrHS=zMjGYh=dUis-JKjgYHaeOB4LQWXM1+4A@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_164001_249149_DE7CCEA4 
X-CRM114-Status: GOOD (  10.50  )
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

On Fri, Apr 8, 2022 at 12:14 PM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> Hi

Good Evening,

>
> seems like usb (2+3) is broken in 5.18-rc1
>
> i see controllers, ports are powered, but no device detection.
>
> maybe anyone else have same behaviour with different board?

Yes, it seems you are correct, there has been a regression with xhci
between v5.17 and v5.18.
I'm bisecting now.

>
> regards Frank

Thanks for reporting it!
Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
