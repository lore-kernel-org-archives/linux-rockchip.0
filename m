Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C31A1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 19:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RJwBvUHdwlSKci3WcqPbqtGmSbxhfKw5H2u03IQv0c=; b=rj+EOMbDWWPoVv
	Jv2znFZ7y65BqWQycHpgEZpqUBa/H8ZPyXDh5etKQgVQtekjEdL8dThnXGqOQSEk/dL2lILV5PvkF
	USGiLmEM8P6kQK8wvy/EJgHByJjzBv6YGi4WTg/xk5Zae2rVPvAcs9mUfAHxLGlqDHh/xrEJ/pwcH
	bmv1wVcYFN50wXM9HORcDkkxbx/mxMT3wB6BgLupFC61K8nCq6mdYiqjHR+It4JgTquEjAfdoFFji
	YNyOLxcE9GIiqEeClYHQtq9BdzgurUA9ucqHCKKgv2g2JR6GIGi5bxyBhaZxJJkSTJ0mCILYXtFSk
	HlW7NqZNDjVKK0eHAfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSkxq-0005tU-4C; Fri, 11 Mar 2022 19:30:14 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSkxm-0005se-Qi
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 19:30:12 +0000
Received: by mail-ed1-x531.google.com with SMTP id c25so9954864edj.13
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Mar 2022 11:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CiUezDJ58r8Iw07Qoyvxoz0ZHX0G/54rwMW8d0RbjzA=;
 b=iHIAbhWzp8tc0YAwEhQQ/Qz4Ooak+7FaxTGYcSS60i0qCxWBmTJaBBV52h2QbuoHnB
 B7CReWzagbIfI9r6aP+iT+GRtSrgtqQ/0WD8ekPTrgRYFhm/0QMcLZAcdbzakphIkLDS
 EKyKWj5aWRdz/VkB5hgB0gJjxMI5baLl0OGms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CiUezDJ58r8Iw07Qoyvxoz0ZHX0G/54rwMW8d0RbjzA=;
 b=iYUBCacy+MBS9W3IdTIHOY9tBC7Algg+L2zafMoiMO9WlqX2OKzxHRveP9LT+xOQMu
 oyYDtrXI0qOfGqhNpb6GAhva1x5Z6AK9U5DHYsj+D+0jeh5g9J5km30Pr1DI7Dkrmc6u
 ZUJuAtpbnsKF2ZF0GqBzvL75yZlDjqjdBI0o5INmhw5AhZirLaT/hfY3yC/Ov6RjaFpG
 trUffZa45XorTzXwxDCY8eSyOD6qNYV4dRK48cB7CBEaE9CcF66Ef3aIFwh2LXgeDWZE
 2GprUrasqxc+EAZR9esnnghhzXkHPxh4xCKSIgrAvkMFsWo7BBlT3o5DAgiRumBoEPAq
 v93w==
X-Gm-Message-State: AOAM5331i6Ks+YrArQmcisNEWdVIMWCFrpg06MagyW9RPVYEDk9gaunT
 nWUxYpJtNYtlWZj7sRQTvzSQ3PofjpOMJQR1GzT3FgW4VH0=
X-Google-Smtp-Source: ABdhPJz13FaP30N6s3Ix91dc3p/I2bGiAVjpU4cugf7dfyUG+ysFJja0OY+rv8QfXqkqBg8iY7W8MqSJdHDs0SD2LfM=
X-Received: by 2002:aa7:d4d6:0:b0:416:30a2:58c7 with SMTP id
 t22-20020aa7d4d6000000b0041630a258c7mr10143247edr.271.1647027008290; Fri, 11
 Mar 2022 11:30:08 -0800 (PST)
MIME-Version: 1.0
References: <20210630162251.7378-1-jbx6244@gmail.com>
 <20210630162251.7378-2-jbx6244@gmail.com>
In-Reply-To: <20210630162251.7378-2-jbx6244@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 12 Mar 2022 00:59:57 +0530
Message-ID: <CAMty3ZDdvR4doWoXCT-vchg3kQA5gLVO+FW-xUqAeDXEY39QuQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/6] arm: dts: rockchip: update rk3328.dtsi
To: Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu, 
 heiko@sntech.de, mail@david-bauer.net, ldevulder@suse.com, wens@csie.org, 
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com, u-boot@lists.denx.de, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_113010_902173_A008C8A2 
X-CRM114-Status: UNSURE (   8.31  )
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

On Thu, Jul 1, 2021 at 12:19 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> In the Linux DT the file rk3328.dtsi has recently had
> some updates. Update this for U-boot as well.
> The rk3328 usb3 port has now support in the Linux DT.
> Rename node names ending on 'gpio' to 'pin' or 'pins'.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---

This patch needs to squash 3/6 and adds a commit tag from Linux Sync.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
