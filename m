Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20901C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 21:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnT9o14QMJvHSjrBuY5OmyESsYjJsChP1HsO2eHH88c=; b=ZimigUagsINfWE
	fUXhCKKnWPjdG4BSSQbf32yl9uvUbIG0791V4ZvLnIpUONfGFAImZpBfu0DSSkCotnCiZfCpLDZVo
	2nemhIXIS4R/zasG17H/QQeZeKkKfpkP3Cl/Ecui2dXbCPbpAHSY3Ip+B2/YFiX7cc6l6+zcFJM/p
	mQRukxZ4b0Ux1vqkps5O/OvVTHLEkUrnlof5oMxPOJTW7R8tBfzOEiEK5jdLSXT9EE4MJm2yCc0r7
	KACA7MFu5hMoBp9cmY8lbKtZwwzGJ1K7/HxNr3FYtQpH9A+zHkkkKpQrj5ZyCe4RDHNbvjkywX4Fd
	1F11172NSAt7mgFqwv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ni0xh-002aSe-Qr; Fri, 22 Apr 2022 21:37:09 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ni0xf-002aRX-P8
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 21:37:09 +0000
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-2ef5380669cso98548147b3.9
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 14:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O1brtd49tFwU6VlKDj5lc7i4Jw60+UgK83W4qk+h+e0=;
 b=XmIyifA+YpSofgABXPeSSRBcyBPBXndpAol7TNCDT554ScXbKEZAGvD8TXYYTomqT9
 b1YgxnQtXAnla4d+aH4p7J7sUz8LS4gj00UO/+UgEyJkk4wt3eWA2/f9Q/Mman2yKB5g
 2+qB1nwco1Og0RxqJK+kfROBBCxGPhj6XC7UUwURBmzFCN7l3rpY2NLq8FnHtN+CetHK
 3FEliT9GwLRCfAMRKaPlKBFh01G1mYUZla2ux4cNWIfhWPogxM3DxBF4nDtHQDgCk13d
 JQ5ekbGxRAFBNNzbit2lZnRMqQVTGY94IfQnW5SbBCm5qqSOlwRzABfF5Uv9l9bs2VN3
 CLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O1brtd49tFwU6VlKDj5lc7i4Jw60+UgK83W4qk+h+e0=;
 b=vkA8c5P0QydRuGucXcukt96kJbleje9U/4x3A/qvwJF9pkg5bigt09E8Ens5GIaQ1W
 VIYj5CVIC/KZuCZh9qRf5tFj4DHRum7GGubgDa4tB2didFgBh20ME++yP1PZswccr3+5
 09deM4ogiFuu5nnZwKwcu9OV0mhb6PAoH1kr9aPAHE1VFlH1S3xJ3Uh60i0XvDr3p0S9
 QjjXBbmlG9rY+pCYtic/g9izrECGBZp5GAPiOO4Ar178XUHf6/eKXV43fERS3Lc4fpCo
 59WAZ9Hu9DSKx+Zjj/HkIILgkbparReknaZ86ASVwThSVtVDaJYtMqPdKd3EWUjQOYI5
 J56w==
X-Gm-Message-State: AOAM531ApuoS0vz2XJ6WamecTAOjj0MoKLDZ0v38GyrSBnsc643njhpX
 vV4eisEro5KUBJ2YdfcFE4LB/RJzIIaX5bafHmVc5Q==
X-Google-Smtp-Source: ABdhPJzpJm8aFbRgP7AYh9JTSDrohue4rzeBHmDncZK7KYHl1Wq9GHZoH62A7GncOVa0KRpQG0mu6FKnr2J3pJbFF1w=
X-Received: by 2002:a81:2154:0:b0:2f4:d79e:35dc with SMTP id
 h81-20020a812154000000b002f4d79e35dcmr7027734ywh.126.1650663425930; Fri, 22
 Apr 2022 14:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
In-Reply-To: <20220420142432.248565-1-luca.ceresoli@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Apr 2022 23:36:54 +0200
Message-ID: <CACRpkdb51a=kuudD=g8ozzmsHdgHzou2gA8_zT2Ex4bds923cQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: rockchip: fix RK3308 pinmux bits
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-gpio@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_143707_848460_6767BD05 
X-CRM114-Status: UNSURE (   8.08  )
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

On Wed, Apr 20, 2022 at 4:24 PM Luca Ceresoli <luca.ceresoli@bootlin.com> wrote:

> Some of the pinmuxing bits described in rk3308_mux_recalced_data are wrong,
> pointing to non-existing registers.
>
> Fix the entire table.

Patches 1 + 2 applied for fixes!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
