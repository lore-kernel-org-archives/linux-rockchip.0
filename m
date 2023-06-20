Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAC84EB64DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 12:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=it4cVYbgYbZ/SqeO0ug0HX3OvhWK1PbFLCfzHUPnXzk=; b=JLE1bzsTNZXsI4
	S67DJN8d0wiWtx2/8kH2Qi9iohHPEwBu9CRf5P6yqg9oKCnFvPEbJ+yGmwGKd46S5NgRoFmftQkig
	7E2Ac5v1nnUoC8nuW30cEHBlcSRg2H9cjEQN+RWYmpabScPff9lJqjehHIgCzmCEf1yG8wi93iup2
	beb/oizUDx0bhy8J7uyA48EX+QA2f2Ls0ll2QaahHDOxXuGo2WphSKjMqTRIRFW9l1QfhHo0Gr3qX
	40gDwtglc3zOT29Mg1mNMsyaRh7fKPFQi5V3vqsag1CsxwaehyS7/1pa2mUarmZj+M3po2IWVVnvJ
	tOliGIKJD+we05qiSzvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBarF-00BJ25-1Q;
	Tue, 20 Jun 2023 12:53:17 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBarC-00BJ1A-2q;
	Tue, 20 Jun 2023 12:53:15 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-54fb3c168fcso3819697a12.0;
        Tue, 20 Jun 2023 05:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687265590; x=1689857590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=36Q0E79+X6bNneD5gDA+F7nctDYtSY+gSKV0kemn51w=;
        b=biZQsAESZ+D1x6A0v1zqe/1e4BZaCgoEsQ6FzOWn3p2nkjLod+TPsvmNIIUxxx7Iqe
         4O/qBQKOMyeabo0VPCOC47R1gnS90F0ofGDSzSXP48DlY1zcoyGnK1r8rCqIsJDJb3+D
         GCD1mSc94t8CYjOkmzNoqpxK7juIAsKqDHHDQ0Qw6vsi9vYHjacSGB3jHKpiaPtthleY
         nUkUFUbE6YQcrCrquSVTk7vNL75h9BkYG7MP4SMrNfP5CITzWgENVOUlSUEmoIlqdPEO
         3j88WEA6pWnbcK4ZFw79uWx6NsrHJ6RcVDDC1CCiIZzwJ1ap1yt8Ri5ruSrsYshYrNxo
         Yrjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687265590; x=1689857590;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=36Q0E79+X6bNneD5gDA+F7nctDYtSY+gSKV0kemn51w=;
        b=PYtb1nz3tf3DvRqxxE0VY0KTB/mAN8FkqU0vEs/3V+hXvfNLlcmbr+wAbC9/9dLMEm
         vZ96mWS6aAocUbiXnWnKLdDgnTbQqSSalL411ZVHuBrPLdl5jF7v6zCp9I0TibDiCegI
         FYZLM3BbU7vjYad/0IoHc9b+0PIGUFRXSpXbV1NfZE4hBWvWoYkNcYvkxdPs0I9EfKFU
         sDTt/PLjjByIh86xnPw+bIxvLeGXA3euVw903yBrNfeZKh1z8Ott7zdy9xs/DnyPBwUp
         /5XzqnytdsDlkd53pV3I8FK/swGVW3i5QEcFNViBT98ae2wy9+qOJASOJge064O//X3W
         7lpg==
X-Gm-Message-State: AC+VfDxh62cfJV6y05/RsruOiDmSkBrVBqBpROypeauPOBYgKgrc9i3M
	D6Yt0uuj9I6CnkqPZawrL7qviwWHus31iC7mTEJ8sjq5M0Li+Q==
X-Google-Smtp-Source: ACHHUZ76WSq5RGqhOitBXAkf/k6nPDKOSPAANQfs50njYPaQLIfrVUw7wInfRGDjJSuF2kvn1h1zEc7LSN9LNzG/6k4=
X-Received: by 2002:a17:903:41c3:b0:1b1:ac87:b47a with SMTP id
 u3-20020a17090341c300b001b1ac87b47amr15870276ple.65.1687265590088; Tue, 20
 Jun 2023 05:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230614134716.1055862-1-a1ba.omarov@gmail.com>
In-Reply-To: <20230614134716.1055862-1-a1ba.omarov@gmail.com>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Tue, 20 Jun 2023 15:52:58 +0300
Message-ID: <CAKyg=SXGbk+rtH_-PVbKgdj1LoWSxuq0=SU6FQH_U879fMeY9A@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 101MHz
To: linux-rockchip@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_055314_920166_9E4AA497 
X-CRM114-Status: UNSURE (   4.73  )
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

bump

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
