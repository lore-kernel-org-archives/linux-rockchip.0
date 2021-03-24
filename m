Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D395C433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 08:33:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF0E6619D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 08:32:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF0E6619D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=moQp+lbNCgccXyrm69u9BwGLufh0++n1p43Cr3RPOBk=; b=OUrI9vcdPDXa1w5euHEJ5/F3G
	imxb2TlZQ09ukGlO/6+rrTpnrGwbazaEc9wThDheVdTTFeAUdOWpB0n7WJ8U5FVPxGaZ8PA01OcPc
	e4kgY6ia8oowjswnfv7q5rSbABKQ6sPEy4rSsz+dHmHByiB7iqhtsegzCJMMscMsW3tkYuOy8m0dI
	y3gVU1HQMlUdIZcKNfrvkz8inid0PjXkufd4KcNZuqJGfo8/xPGHYr2u0FRFQ+yKzOsJ8sb9xMhUf
	muOF3WSByZA2OVLMu/FVMR4IgDKhulOhNeYVY3IzfCzzYIyus+w4uxOqobKquz4ZfxOrf12SFfueK
	i7UJlH5FQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOywe-00Gdn2-Vd; Wed, 24 Mar 2021 08:32:53 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOyvf-00GdUW-UZ; Wed, 24 Mar 2021 08:31:58 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id DBE19F61;
 Wed, 24 Mar 2021 04:31:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Wed, 24 Mar 2021 04:31:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=YWzCakH/LUe5+V2WZEYSbDkGhoC
 pPYo+6Tk6C4iv9/8=; b=VhCYgkAOyFUf04xiJEJlIZIxcJWUW/WH/qo6qDuFyWp
 OuIoILTOTlM/g3Q08tvsgukrhsh4pwKiPQ0dmBlkQJ9Tj4HK5QVBQHHyd4Z6mMQj
 bfqRyBobZhj3vSffQGUWGrG40to+DoAL2X1kw7xnUDY1oybczzxoTizbHQOz3a2o
 yiGIFt13WGap38ensKj3Ynkc6wluSndQstSqgXUAiExUVVTkYdryQMGKXzZ+E0WQ
 6B9Ez4Eg17EKBPoPrRgPktByGNfQQa/YP8aOfSw207HBafJsgXUJdCf0aN91PDrA
 3jUAxAR01NdgTfum8v3luCQ9WH7ev/YTAG8wiq9dwug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=YWzCak
 H/LUe5+V2WZEYSbDkGhoCpPYo+6Tk6C4iv9/8=; b=VRoSlbTLBH26aGP4opYF6R
 ifkE2GUINjg7el1gT+AsIYFmbSfIxB8M22emR/vY6/FttqOt6nkmS42qBHgfgNe6
 0Hc+VxUCTI5E/dzes5Bvkxukd2MLoeBTlXJv6gNoqNZWQ67bInwBAJcPcCjjSeR4
 w5g4Ni6Bx6WYNCpH4YhHfe3PbM1nJEhJlduTALcI+fONyW01KExWWNaSZvKNJcEu
 mC764yenYWMxMVMQD4Ozs3GhurjkAlAtMhGSiJiVLhgLGpm3O24l+dv8NT9zV74v
 cBssBM2PZkAuZfXwTVg9GTafZFW5H36H7AQlot+Vp+yBu5VB1Sryj0ASulpdHWwQ
 ==
X-ME-Sender: <xms:7vhaYM9vYn5pqaEZ_vKyA6Z_6SSILxzU8T3NlLfFxEI6XEEl0zNZGg>
 <xme:7vhaYEuxJx2b9dQ9C37-YPbGYiUzsJyDz40FtJ8hG4VBxrApiIdBo0Uewe9EkZTR1
 1HcS8qAoqNjsoKS8n8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudegjedguddvudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
 heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7vhaYCA3tIW4IWBz6LBgrLEQKMse2V9Hrcusu-FZG3qyGZkQH6n02A>
 <xmx:7vhaYMekpa053HJpvUVMCxAexVS52CWPTT6lwDriwlgj3D8pR6164w>
 <xmx:7vhaYBO3SXfR58ylpjCVp9qemvl0hlbrU8vsdA3TCn_FrY0NenzljA>
 <xmx:8PhaYCE0KILfus6itejyuhLXRhSV8cZUhRlwSFWggqII9bpUC2iVxJXj4Cc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0F0F1240423;
 Wed, 24 Mar 2021 04:31:41 -0400 (EDT)
Date: Wed, 24 Mar 2021 09:31:39 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/rockchip: Remove unused variable
Message-ID: <20210324083139.fucyespm3utmr3mg@gilmour>
References: <20210319152920.262035-1-maxime@cerno.tech>
 <YFU/6Hm1CuVL8MlO@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <YFU/6Hm1CuVL8MlO@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_083152_934004_1A218AA7 
X-CRM114-Status: GOOD (  15.70  )
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
Content-Type: multipart/mixed; boundary="===============1526529226860557542=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1526529226860557542==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xd7ljjvtuupcqacd"
Content-Disposition: inline


--xd7ljjvtuupcqacd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 20, 2021 at 02:20:56AM +0200, Laurent Pinchart wrote:
> Hi Maxime,
>=20
> Thank you for the patch.
>=20
> On Fri, Mar 19, 2021 at 04:29:20PM +0100, Maxime Ripard wrote:
> > Commit 977697e20b3d ("drm/atomic: Pass the full state to planes atomic
> > disable and update") added the old_state variable instead of what used
> > to be a parameter, but it also removed the sole user of that variable in
> > the vop_plane_atomic_update function leading to an usused variable.
> > Remove it.
> >=20
> > Fixes: 977697e20b3d ("drm/atomic: Pass the full state to planes atomic =
disable and update")
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applie,d thanks for your review

Maxime

--xd7ljjvtuupcqacd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYFr46wAKCRDj7w1vZxhR
xVikAQCSOjvdI1bAIpWTP3P5MFsU2LgHwd2ZK+wt3h9SnDa4igD+K8wTroNrL4RS
VKTCTGcbi7CFwpxBriTqNK0lEijZiA0=
=N1Kf
-----END PGP SIGNATURE-----

--xd7ljjvtuupcqacd--


--===============1526529226860557542==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1526529226860557542==--

