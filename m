Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 431B6C388F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 22:04:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A00D22245
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 22:04:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3OGFbnke";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="u4upi2GG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A00D22245
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CzQBH1fZE/gNcWeXnE/31eNcSrjbQbGxtjrNyOcJah4=; b=3OGFbnkeV78LDzbNihK0ULOnT8
	8/bKbyEXR0qSAh3p9IwAhxl39P24pDETjgC4ubXJWvmnf/q8D6p6/UJPupdMGVdSV4KmdfUztZzp1
	jqeCq3hJiKxdwm2GrqEezhdNXceer6JR3lE38prRwOwMjbhz8sCNvAEtv1sFDDe2Jf1gR0GCbMSpF
	x6UBkCBnWsW0N+nTNcUMhqRzXpyGDDRqAMZYihKBB//nnOeQ1EGsq12s5/JL2+fCYkIIR6tBW25H5
	az5J1EYGRuhmNCBgpaTt5qwsT76A8cC0+9xOwmEi6jAFpOfldjY4pvs1TXXC1Bmvbp1vQvYQlwXnV
	ul8lLv6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYcVM-0002kk-Tk; Fri, 30 Oct 2020 22:04:16 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYcVK-0002jw-JO
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 22:04:15 +0000
Received: by mail-wm1-x331.google.com with SMTP id d3so4200596wma.4
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2020 15:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=iLoiu1GZPoeyLaOUIzIb7hrIHQg3p70W9JlIXcT64Iw=;
 b=u4upi2GGkctVojzKJWhhmzuLuEk9c4NOvdcGJrKD3bR9DBWPc+qS8fhVlXh+Vgd/Ye
 Q+iqfvlmTnyFyAXSzK1qy9iF4cpbYMh4k700ilzgvXwFAI3lYWy6eEU5gc+izbAaY82w
 Hh2Zt6esPrOdBP3lR85355JmauaFefO9tVsridpeUvN15rXhPN0GdChNhEYbvXZIeTL/
 H5Bat7+J3nQ/wVV8u0vJ5of2tmdPtOWnQXpm4mPnhoS2HzgtRUuT1qCuZJGTDUi5g+ze
 HifW2Ys2LejDwCfboT8daxQKUeVys+lw1o7iZJFpGR8D1QS6UgDypkeohNQYizdznfbH
 1LwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=iLoiu1GZPoeyLaOUIzIb7hrIHQg3p70W9JlIXcT64Iw=;
 b=jzTw8jLDMCJW5R3F37xeMtBczyLcUaTCU/rIDjKDX5q8wPxgtF9dJxhMleoLnYToo2
 mTnATCLdxl3VRkf9QgAAKunFvfqjOZNvvRtI50rRtbVdXopR0utb5M0f2QyXbbQIV24F
 0u8ulrRu+FgVDLaRhJa1aapJw30IIB8Ox8k+xh0k68StmRxpMBCTC9bAQk+ILYh6VOrh
 0oFA90fDBJnM1/Ok70beBsTjsE8PRWwG0vE/pMe6UQTL5EJYXHSbXfyFkR3QhwxYgFMn
 fDQd7o+mNPXvBtPFbNVVQ1ti9dN8/ussEBxqmhdZrNNLy0pjXrWxji3YP9oulaaQydeA
 qtig==
X-Gm-Message-State: AOAM532vSgOpw9Kayfauh8/X0HulcyHma/j3QvNDU2aLezVDI4fvxydV
 6NdFbwTAiJDI8eYKVqQiVej88lXT/Dc=
X-Google-Smtp-Source: ABdhPJxNx2FViMFM6B8GLTdqE1k/VawizE0D88MeDuYA2OSKK136g8CLaGR62/ZcUBpIJAHSS5VFuA==
X-Received: by 2002:a1c:f405:: with SMTP id z5mr4846779wma.126.1604095451926; 
 Fri, 30 Oct 2020 15:04:11 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id y200sm1785428wmc.23.2020.10.30.15.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 15:04:11 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Douglas Anderson <dianders@chromium.org>
Subject: [regression, bisected] no MMC on rk3399-gru-kevin with 5.10-rc1
Date: Fri, 30 Oct 2020 23:04:09 +0100
MIME-Version: 1.0
Message-ID: <59a5676c-cbf7-4a8e-ace1-f079e09d21a8@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_180414_689630_03B11D2A 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thierry Reding <treding@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
commit 21b2cec61c04bd175f0860d9411a472d5a0e7ba1
mmc: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in v4.4
broke booting rk3399-gru-kevin.

The kernel waits forever for the root device to appear on MMC.
Removing the line containing PROBE_PREFER_ASYNCHRONOUS in
drivers/mmc/host/dw_mmc-rockchip.c fixes the issue.

Regards,
  Vicente.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
