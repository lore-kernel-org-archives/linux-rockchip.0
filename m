Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AE7F483E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 19:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pQrin/29YIQ5Bon0tzN0o2xwDvTCWEv5fLi7I3FxeA=; b=YZ1gjJ5A3aTsGX
	gTKHt1CR+Rca8ImZsSkbgBMOhpHeE3PfWWzbaaGIKsRiMVOtGqtuF9Vf8GwLJRZg0dYjKmZ+aSCVp
	VsJXzEMaGcD0qJjUKMOyjDBuwd63FEoVHnEZ0k85M1OQBvSXdHZmV2pUJ0Nnm8KQIVgv5mYx5MzME
	655objoIIoc/+ybC63UspJiKb8F26pftmR5IViMIBrFe00X/+lK6x18VB390RblER0JrU0u+FT1Qx
	Yk/hfLrUR7RHnbi7lGeaSTrGv/qm5LObiBFgUwgNK5pUnbzUZ87pbXgxzqSZ/jfGTusr+O1gBFwLi
	/rM/RALvd2YUMpV7xbgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l3e-0000000HSFO-2nsM;
	Mon, 23 Mar 2026 19:35:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l3a-0000000HSEb-2zBE;
	Mon, 23 Mar 2026 19:35:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F2C2B41880;
	Mon, 23 Mar 2026 19:35:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B188C2BC87;
	Mon, 23 Mar 2026 19:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774294521;
	bh=i/t8VSKp5b+BL5E8gx+o445vAz2TiAkmdeFV5lM/HPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i51Umrv24x2wYxi5FuXuoM4znGJSMe8lAkc2oCadrO+TOCZdcoWNwZQS3hzaK9EHJ
	 ClUdWOK/5H9wMZI/KIvWBToZPSYD0WhseP7jbi1xX/n7VN9UqNB+dr+Ypt1GQk605U
	 0jJVngIokSRQTaUegoeVm8rqtidwZ9Ci9gA2WWxQV8gkCcskRyuWtAmQmdqT0wAcjW
	 0ftIvk+zsSaC7MvPl1PcfCyVrU47G2/lE2OStAC6iEp9rts/dhqKRYzc0BRbEr8qKc
	 nbYd3zFuKJbBJy0yhK5Kt9IuJ/lIGuk5MHdJspVhVqeaVALvdcVyVjkVbsoJpwMzaw
	 rZA/42lWPwugA==
Date: Mon, 23 Mar 2026 14:35:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Frank Li <Frank.li@nxp.com>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2:
 add rk3588 compatible
Message-ID: <177429451982.1234730.1312051337335309882.robh@kernel.org>
References: <20260305-rk3588-csi2rx-v2-0-79d01b615486@collabora.com>
 <20260305-rk3588-csi2rx-v2-1-79d01b615486@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-rk3588-csi2rx-v2-1-79d01b615486@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_123522_775328_D971AA57 
X-CRM114-Status: GOOD (  11.94  )
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


On Fri, 13 Mar 2026 12:08:45 +0100, Michael Riesch wrote:
> The RK3588 MIPI CSI-2 receivers are compatible to the ones found in
> the RK3568.
> Introduce a list of compatible variants and add the RK3588 variant to
> it.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml      | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
