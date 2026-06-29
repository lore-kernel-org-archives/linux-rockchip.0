Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63A60C43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 08:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw4CSUGAsYroXRZRIWxoMhlUSMMUuZsjACf74bkkx98=; b=Y9XGCgOJA/kMlr
	DZu3yXHyoJS1BSttAEbcvAAHn8v6La5xJ56C6bDg9CfHGtB618oWTVppf4bQ73owIX3MnmfEgeNQo
	bQy7+geCPndyzFP9mgRbiDasTH1NMYpnI/ObS7F95NYawWJYDhjcKyIC+/jTA4W03f8PsjOKrsCHK
	yUvZtiT6U5BSMV5la9xB87Vva1QZSDA2Mp2N70u9E6WvVJjyROtpveCqDILrT9k6cCAzYl85YQl5x
	CvToh7nWsBL1atLSmsy3piB3sMoRv8gu3OiF/AFP8yypbjtiQqGNvLZT9h63SHYkZGfLJPkTVuBid
	t9jKWacz0KlVIH+lyqjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6uo-0000000DyDu-16zn;
	Mon, 29 Jun 2026 08:00:26 +0000
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6uk-0000000Dy8T-2puu;
	Mon, 29 Jun 2026 08:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/nvwFv0JfmjK2NA5Qy4Mb1EPkG5HgybnUNzmPA+S75k=; b=XZ7uOx38ZJ4O0V7qpLnD5cQ9u2
	SDJkMOPnuHSkURQBGK3plOCj0HwhIB1h6EHGKY33vhCwHwnAtQ3lsx3BnnFj9IEb6mf8m26gLfll2
	JHvM1KU0xGpVutlRiy7ATGXmLnD5H6e59Qrm7Ytfye/w58z993n1aP2Ofgk5EShtWNafl+oNbzU9H
	wvPMf7/bCt2XsIMfuaopzXLbqekUfWLDeS8RGHOfbUf5Zf1xKheGerDQrJQgePpAQCz/13RY8ygU1
	bxwIl/cma034VcE8fDYA/JaDi/A5nT10QMyCOgvuKoGMLvNMS2VlVfoXo9FczLilL7ObcVaN/hxUO
	tLMVAU9g==;
Received: from [81.57.40.39] (port=42644 helo=superkali.me)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1we6u1-00000001mbW-18ue;
	Mon, 29 Jun 2026 09:59:36 +0200
From: Daniele Briguglio <hello@superkali.me>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Youyeetoo YY3588
Date: Mon, 29 Jun 2026 09:59:34 +0200
Message-ID: <20260629075934.518649-1-hello@superkali.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_010022_871948_9DA23141 
X-CRM114-Status: UNSURE (   7.98  )
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

On Wed, Jun 10, 2026 at 03:58:57PM +0200, Daniele Briguglio wrote:
> This series adds support for the Youyeetoo YY3588, a single board
> computer built around the Rockchip RK3588.
> [...]

Hi Heiko,

Gentle ping on this one, it's been about three weeks. Conor acked the
vendor-prefixes and rockchip.yaml patches (1/3 and 2/3). The dts in 3/3
hasn't had any comments yet, and I'd hate for it to slip through.

I know the dts queue is long, so no rush. Anything you'd want changed, or
is it OK to queue for the next cycle? Happy to respin if there's something
to fix.

Thanks,
Daniele

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
