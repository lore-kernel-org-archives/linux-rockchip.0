Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 709C4ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 12:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfLymSozeYP+j6Wt7rQTMOFiRe/szQdSu16LIuLwYEY=; b=qx0RXhsrPulb4S
	MC0qhT3YU6si89yZIJ5PgJff2Wv7pONnXZyGMDrgH5DoofptkFxRwYHPxcbpEXUXBT2haadckqp5J
	+bqvApDYucK5rElrduqAOuEr40lAeNBcudqY5ExwC2sGroczCE3G8I77hKZEfwws+0srjjy4DQdGt
	t/L7kEYt2B61itr8zzBLYN72Yt3/uA12IGwoYydXgTPB74v4nBmWNoGAual+WE8x6EQJvygnmL/+i
	WuELgsCKVCaKvEmCAUBWdNZ/BHGJ9dDpPQ4a6J03qNmXQRDYy+rFWd/n+vu+q3BQt258AtTLK+vo1
	a2yBysaJdExvMjFC+cCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMzH-0065id-27; Wed, 31 Aug 2022 12:38:31 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTMz5-0065g3-OM
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 12:38:20 +0000
Received: by mail-ej1-x631.google.com with SMTP id se27so20349745ejb.8
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Aug 2022 05:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Nw0EBkOY83iYP+XsN3p7xZie4SqaMCFMbmxIx0k38js=;
        b=EbrxVY5nmWOEeuFzz8xCaJqiVAvdtpUvBA09CA8hlz6jVkKBBrR/cUoroforFFsHgH
         8CTqzGo6sJLLleJ3EjHWNW7S4C9EqAo1GspjvLhY8kAI7KH6NE3SU88Zhg/0YBD8/cIM
         CAreXFBsW7QgLcRnUd4MXZc8zjptdubpZ4HnrliE5Rob4mZOYDfsHDF8unLHjql30KkR
         x1aayH3bv59OYuOO3e+EpxZrQipMhrTsMThjsrzdpqBp75vSrWDvv0YbeHIaw0asdmh0
         /tX2jReNXg/+GLMwAV1WwNtcn/7lUzkMmHljQ2GeLcZYUN1CC3evGFqk0UiehrPdd0xO
         kVBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Nw0EBkOY83iYP+XsN3p7xZie4SqaMCFMbmxIx0k38js=;
        b=qVtRsJmQBdgfK0hLH04MwBe79tSFahilxO7Xti01WmG88VpJmftrAoc1jtMWYo2Xun
         p946WDUi4OTxuBPaGZOTFp7Lbod0IIhmj7LZaSe5JvJwq3LEEVLqYant+aSDCRyCKenL
         xgO9mgAJm3MdW0whZ1w5C7KzMo9jYpXJtv7seEQAQjc23QNHodK4rxfPtXWyxf54ESRW
         JfGAFwxaugHQ8PKj6XoEdeJZtrbIYzAo/ymftbXKNr58mSLlnxIVvTaAOBEggqIRRLXW
         Q91bvpM/XFhKqWhTmtQpQP0Xame3+nWeg7v0InLi259GCK5Jaz5dIy5mXpoKPyXM3pyF
         wADg==
X-Gm-Message-State: ACgBeo1fiF6g/cUkVijCbB8fTFcJoQBIHzU/OxoXCI+lQnyfuxzW3JUJ
	lcPJiB2CSRwU827vuVrmheMRiZqR7zCnyozCKwBIhw==
X-Google-Smtp-Source: AA6agR6oyyPbMlYFtb5NpTtsjpRebaLkWf/bYtJDx2BFFBYm0+SoT8VLAlPWsAw1NQyFyIQ8k9S6mB877Ji41iDBZww=
X-Received: by 2002:a17:906:9bf3:b0:741:6900:61a5 with SMTP id
 de51-20020a1709069bf300b00741690061a5mr11441223ejc.286.1661949497747; Wed, 31
 Aug 2022 05:38:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220824010605.14256-1-jeffy.chen@rock-chips.com>
In-Reply-To: <20220824010605.14256-1-jeffy.chen@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 31 Aug 2022 14:38:07 +0200
Message-ID: <CAMRc=MdOdeqkRKMdyX2H3QYTeHkL4mrzWD6=tuo=cH46xxKGFw@mail.gmail.com>
Subject: Re: [PATCH v2] gpio/rockchip: Convert to generic_handle_domain_irq()
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linus Walleij <linus.walleij@linaro.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_053819_853104_2B5CF925 
X-CRM114-Status: UNSURE (   8.44  )
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

On Wed, Aug 24, 2022 at 3:13 AM Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
>
> Follow commit dbd1c54fc820 ("gpio: Bulk conversion to
> generic_handle_domain_irq()").
>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> ---

Applied, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
