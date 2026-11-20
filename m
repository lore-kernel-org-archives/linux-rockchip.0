Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF9B606A6DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 20:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eZA393wh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GnzwZMAVA5ytARjLThPdCoJuM/HtgYqfiY5QhaZGofE=; b=eZA393whgz83G/oVY9zgth9HOv
	KKDdTgS6NriuHHOrj9uiJ1pXDcAqJyePanapMhdLTBu/ETUZ2wRr+WHy0Kky+Pd0gwv4UW2B9Ji+t
	aO4oSzcawzQg2n0VbstpNERWNOq3YBt5IO5XNr7bo3rvDT/jS+QAC4q94XuDOiOubqTODxZ02dP9u
	kpDDb0rcZda2jYhL7zaaLDD6akFOpPW8/kPz3ut8qNsnw4N2OgtCq7seB0uE71ViB2LhZ9gGSv/W3
	wjdHUQOgxK+1AJ7dhC/4rvLMt0uJOTSofEZ9VZ1foi6Axh9IjDBR/Fnn7t5FQiOgSC9BP13eN5M+c
	dvSADWqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUVAk-0000000GEKR-0Jmq;
	Fri, 20 Nov 2026 20:25:26 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUVAh-0000000GEK0-0i1G;
	Fri, 20 Nov 2026 20:25:24 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xUVAR-000000001fm-1n7k;
	Fri, 20 Nov 2026 20:25:07 +0000
Date: Fri, 20 Nov 2026 20:24:57 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Marc Zyngier <maz@kernel.org>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dang Huynh <dang.huynh@mainlining.org>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: rockchip: Add RK3568 Video
 Decoder bindings
Message-ID: <awCsmYYv5k9DYwbm@makrotopia.org>
References: <cover.1795191822.git.daniel@makrotopia.org>
 <70b950c4b4fefbe07fe081f780ff359ed697d37f.1795191822.git.daniel@makrotopia.org>
 <DN0BEIZ5BE77.AML9IJ2SIR9G@cknow-tech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DN0BEIZ5BE77.AML9IJ2SIR9G@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_122523_207035_33DF9316 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 20, 2026 at 09:19:24PM +0100, Diederik de Haas wrote:
> On Fri Nov 20, 2026 at 6:40 PM CET, Daniel Golle wrote:
> > From: Christian Hewitt <christianshewitt@gmail.com>
> >
> > The video decoder in RK356X (vdpu346) is described in the same way as
> > the one in RK3588 (vdpu381). A new compatible is added as the decoder
> > capabilities are a subset of the vdpu381 capabilities.
> >
> > Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> > Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > Tested-by: Diederik de Haas <diederik@cknow-tech.com> # PineTab2, Quartz64-A, NanoPi R5S
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > ---
> > v5: no changes
> > v4: add Tested-by from Diederik de Haas
> 
> I don't think a Tested-by tag is appropriate for a DT binding patch?

Yes, and I was planning to drop that, but then messed up...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
