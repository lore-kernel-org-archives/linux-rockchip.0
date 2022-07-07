Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAA55C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 10:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfltshtrBaNNtzNSHx7KRMtNKy6EHKiav3Mzb2oSrf4=; b=qidrtobQQPLfGc
	5Ai23KyNvWl9DzQgzqIB0B7WATgzHfPQ2iqEdQ0BgRsI9UsQvOrgztesZkgR0em0klggo0eQ7zhnh
	OIOLhhu2Ti1al2GCokvi3HEVCev1ZY52fzv2wjc12sNVniaEG7qnL1ZiW0PB40GZX/3LfD9w0IiHI
	lVwN9Feo08JLrefTFY/d+1WadhzkQWIsb0lfprxY/DE/Wd8CK0/PEWaP8Arp2u1MxRxiB4Eif6bFN
	r4TlEav+yA0hGS6dyqexu78HoXLOlm5sjhN5jnzAxjk8Zbzf8DbxJmvrNihVo0WmvToCYHCCtBxvB
	1dzCS1XuULd9C4ikchnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9PDW-00Fhoe-9u; Thu, 07 Jul 2022 10:58:42 +0000
Received: from meesny.iki.fi ([195.140.195.201])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9PDU-00Fhlq-FK
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 10:58:41 +0000
Received: from hillosipuli.retiisi.eu (89-27-103-169.bb.dnainternet.fi [89.27.103.169])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4BF2E200A4;
	Thu,  7 Jul 2022 13:58:24 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1657191504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=f0NRo0Lhlg/cepkVnMUVo54oyw8Al+Vn/b9di9DwbA8=;
	b=nlhWfHMXYs9/cPERM/PMHR87WTDamot/Q2EVsJm5Ap1uobuWGpxbKM9UHNB3Ngr2F29fOf
	rcvgj/XAHiTdcI9xT9bIQeFPS4lmsxFafpIpED3cF5smqefJcLAfIKYhge1FKcOzYC/RlT
	xSgiGriPZeHJ2wIsgjkoeGoJRVJ8fas=
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 746D0634C91;
	Thu,  7 Jul 2022 13:58:23 +0300 (EEST)
Date: Thu, 7 Jul 2022 13:58:23 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 00/55] media: rkisp1: Cleanups and add support for
 i.MX8MP
Message-ID: <Ysa8T5p1/UrEKVbW@valkosipuli.retiisi.eu>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1657191504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=f0NRo0Lhlg/cepkVnMUVo54oyw8Al+Vn/b9di9DwbA8=;
	b=ZqO1NGVbpg/5K4go5KgIPxaSq/RmSSHEBiIM43f5Ap0vLvdRisxuNZSXzReSU/0HKqwL8w
	g1NsbeZdhBb4K40HDIdmXSJX+HLSTa7cgvvbDIadQPuNYVYxqeWsVijaoaGdtJ+M703+kk
	8lcfk4A8pwNjf446YOQW0snOWFFDcao=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1657191504; a=rsa-sha256; cv=none;
	b=fAhLX3L4QUgFN4YmZs/K6HxuXhRTG+Zj6EnNOhGgOfKgL5gPZPDcMt6jI9p6iRoKh5Q3JQ
	eYiVyJkoTZypDjm16DhdacQCVbrmjmL0ixUIoh7U/muPR+AGPve9WIWvat0P9LrE0ges9/
	CCPHinNA+XmUz01A9oZ9Dd8VTcsclig=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_035840_712961_784B38A9 
X-CRM114-Status: UNSURE (   7.12  )
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

On Fri, Jul 01, 2022 at 02:06:18AM +0300, Laurent Pinchart wrote:
> Laurent Pinchart (39):
>   media: v4l2-async: Add notifier operation to destroy asd instances
>   media: mc-entity: Rename media_entity_remote_pad() to
>     media_pad_remote_pad_first()
>   media: mc-entity: Add a new helper function to get a remote pad
>   media: mc-entity: Add a new helper function to get a remote pad for a
>     pad

Thanks!

For these:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
