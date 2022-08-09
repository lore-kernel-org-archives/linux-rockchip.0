Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A0DC19F2D
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Aug 2022 06:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1FLiTERy37RPzG49poyFXh322OnDWhkb0QLZWnZcRo=; b=WeA3EQvV1sw9ok
	zpDJCkMIfOZcPkvy+cFuhQFO7Xybs/hE+929gpyhSKLJIpY/C1SJZHDJ746HTwFH68vF5xnVP0Lp0
	mP3yhomlMyh3xzBRrgQM+YLuoCuvgb8DAFbMQSnZY6fib1o1S7ZSwPVKa8B/tk+Yg/AH1zhASvBsq
	Xm6SelTsUEjGjfTQfQN4NoCLmD48jNvIR5dvhpRWUK/Cz9ZKA0V2MWPN7pVIJFipBfQtrossmYT7H
	gGdK4IqljJh9yBQXvPI1yz+EE1g7m8gF2jJDuWYAgHseqkok1AT9V3DWJnFu/NwIwiJSCbRoZnv8y
	t7M/Sx6Yj8udCHAJC7tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIen-001uO8-VX; Tue, 09 Aug 2022 06:24:02 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIek-001uKx-QI
	for linux-rockchip@lists.infradead.org; Tue, 09 Aug 2022 06:24:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id bv3so13173041wrb.5
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 23:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=d7+2BSYxyvsSLuCik/VVlPelVR4UOsw6NIEHox7wPO0=;
        b=Pm7E7LVPZOui+XqGS+iSnFHLsVC0m9fKA6j6vlG0FupasZ5jNnZMUjpFr7oaTTpDaD
         zu2cSJioK1RFw+B5wiC1I46qmqsMEpR/yOmQgyrhbyUYNHOdQY4eynJkJVRNqdrwa4QJ
         5HGrROeLsjUaYb8QHHo/w3b74/3GsiFfuz3oyuKjSiER0Cu/wIE4q/xK8ohfIVNS+OKy
         kGktnnk5s0juxmle6+4LVDvi+sGU4tcwalqxW0Yzv08FY70D+2m5/g0M/5IH3eXiXRet
         bBtH0NpEAmwNUZblhiTcJHNfDPLkQm5MwreoYzxwOgE7PTdQBH8qcXYPREOr+rXqx9t/
         OAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=d7+2BSYxyvsSLuCik/VVlPelVR4UOsw6NIEHox7wPO0=;
        b=WolAeWQ3jGiFtaLGknDjQQuf+Rs1iMZxVrjLYMRKczN0SRX6vZDCJiKwNm69oz+Q1H
         HCM+KBod1YvoJoZo8u9nEYuTUPwpWrZOg774z3zVFsz4Ezp/Y/J5emCL2p/vTHVj5Urm
         l/4RzSo50wYPkONINQSQMul0rkiH4Uf3V5b3JXjuXfr5HL1Zu6MSX8OoQRv26sWWQkhN
         MHiurfJwfVn7GM3itqpe/hFin9k/QkunHcysuO2wUzBBLNzuALwjTbpi+hCcHPZMDaOS
         /xbeo4YpejwilOq9YxEUXWIfgyGOjFCn8BQC/y5qoxY3poCGZq+2eGe7q57Dxn7upt0+
         g4cw==
X-Gm-Message-State: ACgBeo0re1e4gBgfPGZTL2wjxd39Cki2JClW8DOWKDXSh0i/sNCrI6Hz
	qtCAUgq29rwxTS34XJK3Crecnw==
X-Google-Smtp-Source: AA6agR5OcfCcf9sUliZFsaAZbqUkuQw4bg/isuHefok+vpOJ7L4ipnYw5h3ASa+mZJ5qkyVioR2gzg==
X-Received: by 2002:a5d:4301:0:b0:21b:8af6:4a21 with SMTP id h1-20020a5d4301000000b0021b8af64a21mr13999974wrq.296.1660026234952;
        Mon, 08 Aug 2022 23:23:54 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id bh19-20020a05600c3d1300b003a2f6367049sm15650781wmb.48.2022.08.08.23.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 23:23:54 -0700 (PDT)
Date: Tue, 9 Aug 2022 07:23:52 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, zhangqing@rock-chips.com,
	zyw@rock-chips.com, jon.lin@rock-chips.com, sre@kernel.org,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH v8 2/4] mfd: Add Rockchip rk817 battery charger support
Message-ID: <YvH9eGYefSiS4N9z@google.com>
References: <20220808173809.11320-1-macroalpha82@gmail.com>
 <20220808173809.11320-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220808173809.11320-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232358_928870_0AD459F3 
X-CRM114-Status: UNSURE (   9.56  )
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

On Mon, 08 Aug 2022, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add rk817 charger support cell to rk808 mfd driver.
> 
> Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  drivers/mfd/rk808.c       | 16 ++++++-
>  include/linux/mfd/rk808.h | 91 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 106 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
