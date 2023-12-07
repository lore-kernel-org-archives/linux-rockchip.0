Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 073EFC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 21:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2q+T98JQ6LoHUcpRWS6pW+zZZtJRxyY65tDttCFRkmg=; b=Hb2
	Ft3eDb2wnWx1BRSJdt/FZP5ntMlMHX8IJ4lmyg3At5CfzOLybGJ5F4JCP2el+/lmJnFcGgi//WZxL
	L4xkTQXp/YKQ97Jo4U/IVJHaX+AtflXUpeVjEfXB0/lDYQAIdP5kgCMCbXxEp+BK3auupZfQ1HSDl
	0piDA4mdhfEZLhTF3JGCZo0VrHuQ6VKkCD25OsWmbYhH5Q2SA+L/QoTLWpc7y7sxX+NRm8DhJLZ8e
	9ORI9RhcxF3PM3bQrr1fG2GNGc0zdug4nVOgIE/asdFUdLj/N9P2tHQtiESweifqRw8z6JLkwpAaE
	+BphY1BV+yJhn7GSKIlRudpO55KWp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLfr-00DvvS-2o;
	Thu, 07 Dec 2023 21:12:47 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBLfp-00DvuJ-1c
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 21:12:46 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50bf26f8988so1551057e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 13:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1701983562; x=1702588362; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9QEva6AheJpvx6FfrPLNU1T/Uw2uaB3hPSTmwEP1PDE=;
        b=sXKi+nwZdzerPyUHMXmEUGLupKVqmdurghYCRSSImt+KsYFOXfXI6vAv9FU9I5RF+t
         ecKQbXb0hFSfMc4gQB4TBdJGrPIVpU2SvlfQXXYrq5xBtGLvHXVsPfsali+Xvn5uPOCc
         VbE2uMj4VPzAzE4LXbnIeCfdz3QnL1EeWfkOCLUebP+VfEAFZ6mig9nj4pJoow/okHeB
         OVFA74osD36phn2HSx0tGqlRzevMGimKJpfavRsm/XVyvu1yKS6qMwxB9KaUTFFkkVbw
         ltm2noPscnMpS5087Apwzf42lRbo3hPev9uDUh0VFfjZmZ8Qie+69eBtVtcLSAvhCuGE
         9Ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701983562; x=1702588362;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9QEva6AheJpvx6FfrPLNU1T/Uw2uaB3hPSTmwEP1PDE=;
        b=rzX2kVFyPHvo8bazXuk4+EzunIISqxYWyVVtbG8eF+X54FnAXaAg0VEJm3tr3+U8wh
         QW3eewm3uUXsTEuO6dT06CbZqERi0J5dZmBCHSzS77jbbMcvDNnzKqq1LSx7A66Sv9bz
         o3mW4ikcKswH+LSfAfmtO05L5bhqJdMEDSXC6CnwVyZ+J33yBbE1Dex7wvDuO3raTGuy
         XrV2l/qnSOEbSSlsET1sYecy52m0b+YKkOReWNRtCWLlov7lvMCzNspvS5B/AESv4uGw
         SQzXAEX1p11be85xJKa8Jq4xTCMxuWXTxWOOALH0fsmqWRadDRaAfsTqHOVn5Dmh287+
         BZWQ==
X-Gm-Message-State: AOJu0YxOfX8ir7YYpz3hqydL/dno4tWp4fF74EXyO12FS0P3jrpuH094
	/YBcVXaBPD3VUnA2HpkrLBwu+kIyq2bJNMnJJCfkdA==
X-Google-Smtp-Source: AGHT+IFOfaUv/OfHcF4FyMrFchznhQAFpg4kwL+QH4WTvN4ULtxz2ZVnlfjCP6j+f761GJGQ8c2LzA==
X-Received: by 2002:a05:6512:b1c:b0:50c:2114:abec with SMTP id w28-20020a0565120b1c00b0050c2114abecmr914235lfu.46.1701983562318;
        Thu, 07 Dec 2023 13:12:42 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id cm27-20020a0564020c9b00b0054db088c437sm219009edb.27.2023.12.07.13.12.41
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 13:12:42 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-54ca339ae7aso2113537a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 13:12:41 -0800 (PST)
X-Received: by 2002:a17:907:505:b0:a1d:3d58:9b10 with SMTP id
 wj5-20020a170907050500b00a1d3d589b10mr1915496ejb.27.1701983561671; Thu, 07
 Dec 2023 13:12:41 -0800 (PST)
MIME-Version: 1.0
From: Shantur Rathore <i@shantur.com>
Date: Thu, 7 Dec 2023 21:12:30 +0000
X-Gmail-Original-Message-ID: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
Message-ID: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
Subject: Rk3399 - Typec - Extcon
To: Jagan Teki <jagan@amarulasolutions.com>, cw00.choi@samsung.com, tom@radxa.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_131245_540027_DDEB68E1 
X-CRM114-Status: UNSURE (   4.58  )
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

Hi Jagan,

While trying to figure out issues with Typec AltMode + SuperSpeed on
mainline for Rk3399 based RockPro64, I came across your proposed patch
for TypeC Virtual PD Driver [0].

Would you know if there's been any other development on supporting
Rockchip-TypeC-Phy with FUSB302 boards like RockPro64 or PineBook Pro.

[0] - https://lore.kernel.org/lkml/20200904191830.387296-3-jagan@amarulasolutions.com/T/#m7b5d674764379253568a4915f2f9988d74c86593

Kind regards,
Shantur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
