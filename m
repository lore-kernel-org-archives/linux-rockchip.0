Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FC4EB3637
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 20:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A7q4B+/lGfBIkQJhUDeDrfI3YY2Yhh8RDyOlZuRHT4c=; b=GAq6H8qD2XcAnA
	zzEFuUFcBq1TYubimijzck66Zc2d0hya+UgBBdQU5MS+8SwpTXQU3+xHT54qy3423E9nkDOBCMWl2
	nzXNmBcqVaBYUKQZPHnpPRsmy2NH08g+yNee2XbWNtMMD0g6tiULZtPOjbh0HZ4Kjije5FR1gtppV
	4xzcjaRNkoDFlGfzeER4AEYdAxSD2UZXjVpRGvWUcaDBkQPrLuc2UqUoVgjPAk1jrSyIxfT2CUf4A
	1gibADAz7VGhBTUkqNL0JOjB4SajbTlaCvXzj0/EnXKMFhbdYgaypf/tR4BTZPuvACdnMytll6zlY
	xV4WTDMMtV2lTCFUM1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAIG-0000000DyVP-1td9;
	Mon, 02 Mar 2026 20:55:08 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAIE-0000000DyUO-1Nqk
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 20:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Odw8qkydcdNF0JVOnHyMy9rrHQVoIN8FWe5q008qLtI=; b=Zr+rutCeoUTf+JGh7kHhJpB6Hm
	4NETxmCx1BbMqh59mLNTXmTgKkApSlVGMvz0WsS+LjGwAJEUtBPXM8CFmPxSGml64My1puOXuuuPw
	MVexNMJhAUyGZiDgQ1a2FEJfDUKrOP1vpE4bCfWmHUHq4KTv1lMqpfjeiqNDQwpWlknU=;
X-Preliminary-Spam-Score: -4.2 (----)
Received: from [45.142.19.84] (helo=zozo)
	by tika.stderr.nl with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <matthijs@tika.stderr.nl>)
	id 1vx9ls-00HGgr-16;
	Mon, 02 Mar 2026 21:21:42 +0100
Received: (nullmailer pid 198545 invoked by uid 1000);
	Mon, 02 Mar 2026 20:21:39 -0000
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: matthijs@stdin.nl, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH RESEND] rockchip: Make gpiod pin control work and add gpio-ranges
Date: Mon,  2 Mar 2026 21:17:12 +0100
Message-ID: <20260302202121.197288-1-matthijs@stdin.nl>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_125506_363315_170381B7 
X-CRM114-Status: GOOD (  12.57  )
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

Hi folks,

This is a resend of a two patches I submitted last december. Lacking any
replies, I'm resending it (and also explicitly sending it to the GPIO
subsystem maintainers Linus and Bartosz this time - I'm still a bit
unsure whom to address exactly).

The first patch fixes pin config (e.g. bias) done by userspace via the
gpiod interface, which was not implemented for all rockchip boards.

The second patch is just because I was messing with this code already
and had a test setup ready. It makes gpio-ranges explicit for the rk3308
instead of relying on the (possibly fragile) legacy workaround in
gpio-rockchip to add them automatically. I tested this be removing the
legacy workaround from the code during my testing.

I think the first patch might be a good candidate to backport to the
stable releases, since it makes a userspace interface functional that
currently silently fails. However, it is not a clear bugfix and I am not
super familiar with the rules for -stable, so I left out any stable Cc
tags. Feel free to add them if this seems appropriate.

Both patches were tested on a rock pi s with a rk3308.

Gr.

Matthijs


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
