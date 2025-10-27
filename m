Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC24CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 11:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlrSjSGkdIJSRv2OG+7NVxdRPIWI7ySBKC3gQLkeypc=; b=bF6vGuNEgXXHws
	GbgYVNkpGRhUtdDmRnrUsswfv9iZPHItZ7bja9TQdCrxFLfZb9aXzQgy2OtwiWSxsYc3glM1H0X6N
	VTD12MEKM/LwvsQmcLpDD08/yG03zJgfoROf9AFSdNt7e3TdUfJSGoTFTshYjFIXESwJJ0RTGcCGs
	9KUvHkU5z1NPGFI3uvvsCuktUfJuosBF5T96m0MI9DN+4cgRQ9ZLy971BA7o06F2rFHfG6sVFjsIG
	Mra49OKSFAXUOgmtH7sfxG5s9rmbPZfxpDFfTlem15rAZ3KGMhF5WouaOXHUKWBpV6CV9aE8cWey9
	riT24Tr1rJ1TOSjJ5dlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDLYp-0000000DmXM-0nn7;
	Mon, 27 Oct 2025 11:38:51 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDLYl-0000000DmWE-2X5l;
	Mon, 27 Oct 2025 11:38:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E89CC40D0D;
	Mon, 27 Oct 2025 12:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761565124; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Pp+cdt5NUUAp/RayY/UAf6z47hnHubbe0RqQqLbK1fg=;
	b=JZcT7et4yPf/J0RdIhCYH2lB1UyH+WU6CUzpWPc6n0kWLt471Tt4zM9yUi1AE5Xi4VKwkC
	HSXLev3iMEqkk/raGfqRL11mYQPEADAfaj3BehnvwKmJ/6Y3Q7ath1yHTX975Gy90Dqp2X
	zTj2GRvGCqV75VyrG7cTJP1bRIFTiTpM5xX7aQlnkrTYOzdFFxzW1HHW8wYSOBtOd6Go7K
	O5meD131epz7A4ykMfSL9Nr6J1jfQCwwVcsUrohDfENyno0uCpiywCh96zDwiu2OXBBgv9
	yC4+gWxqRjuVSti29HyeMsnLb76/nCruVcaLuhxlSA6qC9sRt60N6OxOFQ0suw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
References: <20251026153805.107774-1-diederik@cknow-tech.com> <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
Date: Mon, 27 Oct 2025 12:38:42 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Johan Jonker" <jbx6244@gmail.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>
MIME-Version: 1.0
Message-ID: <d190d649-acd5-4202-4a7a-94b9ada67b17@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Harmonize regulator formatting for Pine64 rk3566 
 devices
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_043847_870952_864235FC 
X-CRM114-Status: GOOD (  17.59  )
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

Hello Diederik,

On Sunday, October 26, 2025 18:44 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
> On Sun Oct 26, 2025 at 4:37 PM CET, Diederik de Haas wrote:
> > The regulator node properties in Pine64 rk3566 devices were formatted
> > rather inconsistently. To name a few:
> > - 'name' was sometimes put at the top of the list, while at other times
> >   it was (mostly) sorted in alphabetical order
> > - 'always-on' and 'boot-on' were sometimes at the top of the list,
> >   sometimes not
> > - 'state-mem' nodes sometimes had a preceding blank line, as they
> >   should, but sometimes not
> > - other properties seem to have been added to the end of the list, not
> >   in their alphabetical/natural order
> >
> > So harmonize the formatting by making all properties sorted
> > alphabetically/naturally. And harmonize the formatting of the
> > 'state-mem' nodes so they all have a preceding blank line. While at it,
> > also fix 2 incorrectly indented nodes.
> >
> > No functional changes.
> 
> I just found some additional ones.
> If these changes are considered OK (in principle), then I'll send a v2
> at some point.

Thanks for this patch!  FWIW, I think that SoC-wide DT cleanups
and unifications such as this are nice and safe to do, so my vote
goes towards the v2. :)

> > Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> > ---
> >  .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 52 +++++++++----------
> >  .../boot/dts/rockchip/rk3566-pinetab2.dtsi    | 29 ++++++++---
> >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 51 +++++++++++-------
> >  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 52 ++++++++++---------
> >  .../dts/rockchip/rk3566-soquartz-blade.dts    |  6 +--
> >  .../boot/dts/rockchip/rk3566-soquartz-cm4.dts |  6 +--
> >  .../dts/rockchip/rk3566-soquartz-model-a.dts  | 10 ++--
> >  .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 43 ++++++++++-----
> >  8 files changed, 148 insertions(+), 101 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
