Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A10C606A6EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 20:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=retdQjUt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=cknow-tech.com header.i=@cknow-tech.com header.a=rsa-sha256 header.s=key1 header.b=gKHowIYZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=m2IbwZ5/SgzuArN3K7gK/nabwVxEdOVMydg1KvT7Tys=; b=retdQjUt1m2xzEPeZlc+0lbGcF
	5zd97wJMGvEvG3+Hmh15BLwu269RPDFgA0B4cS4If1wIvVCIDT0THoN/zfFBurLq5HXqhAYYIFBzD
	FsIMqTzZMEKWG0dYem8nB/AG5jdXFazx9oV3q84wkk/UUxDScWCnWk0Zlm+/Rul2lUKpbjVVwmy7i
	1bjBgZt813TpFbuStoCiEe56szj5EVwIV8Sv9dIFpcsQzQW3cVZHZEYtMLYk+TVqw7x0k9aWbtIB0
	8ObpgH3nH9hxsW/8l/Ymb9VELeSZXbeT2IoXWjEnDnyOz4of2NC0eI5Ka1lijPn9NPF1QSiZDL/QE
	tzQeeVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUV2n-0000000GDYa-48GB;
	Fri, 20 Nov 2026 20:17:13 +0000
Received: from out-126.mta1.migadu.com ([95.215.58.126] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUV2j-0000000GDUd-1OgQ
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 20:17:12 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=oCLNHmGkPtVaSdKOgJfSe9v1erehhFj7NdQ3Eg5hEtA=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1795205810; v=1; x=1795810610;
 b=gKHowIYZCh6xFbfA3OQTaIxtY2Pm/e4nbwUKMbvrYX0yi9YQf3Oe5dbYk96M2L0oQkrQnRY2
 PiqomfO0JyG0qeJf9ciquCMsSVsgwFPZ8l867UyV0aJeVfiwqp1NFs8VtS3qPBf255OjnHzVPaE
 MpKmK7Q1/U18XDdOC4hkjghkkkBWhm0hRHHpgIoG9dn8G/cbxxLQNoxOOMNeUVEIgkIYHQQSE0C
 Iuh9bjrBYIu1ArwgheRJplKSlevturS39+Ccnlg+2OWB+spRk1FOcESvaGpk1p8xhdyZyy9hmyZ
 6iZy+fhsNzRkp5bYDX4sn7S5REXF12IehtteaUw/jk+jQ==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 8603c6dc317910df;
	Fri, 20 Nov 2026 20:16:50 +0000
X-Mizu-Trace-ID: 8603c6dc317910df
X-Migadu-Flow: FLOW_OUT
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 20 Nov 2026 21:16:42 +0100
Message-Id: <DN0BCGELZCSC.G0MWCPQU85UO@cknow-tech.com>
Cc: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Hans Verkuil"
 <hverkuil+cisco@kernel.org>, "Jonas Karlman" <jonas@kwiboo.se>, "Diederik
 de Haas" <diederik@cknow-tech.com>, "Dang Huynh"
 <dang.huynh@mainlining.org>, "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v5 0/5] media: rockchip: rkvdec: add support for the
 VDPU346 variant
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniel Golle" <daniel@makrotopia.org>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, "Ezequiel Garcia"
 <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, "Shawn Lin" <shawn.lin@rock-chips.com>,
 "Michael Riesch" <michael.riesch@collabora.com>, "David Heidelberg"
 <david@ixit.cz>, "Christian Hewitt" <christianshewitt@gmail.com>, "Marc
 Zyngier" <maz@kernel.org>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.22.0-31-g5c1c510d2b65
References: <cover.1795191822.git.daniel@makrotopia.org>
In-Reply-To: <cover.1795191822.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_121709_853295_2D74ECF1 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri Nov 20, 2026 at 6:36 PM CET, Daniel Golle wrote:
> This series adds the VDPU346 decoder of the RK3566 and RK3568 to the
> rkvdec driver, for H.264 and HEVC. It continues Christian Hewitt's v3
> ...
> Known limits, none of them introduced here:
>
> - FFmpeg's v4l2-request hwaccel does not set the HEVC EXT_SPS_ST_RPS
>   and EXT_SPS_LT_RPS controls, so HEVC through FFmpeg decodes wrongly
>   on this decoder as on the VDPU381 ("Long and short term RPS not
>   set"). The handling of these controls is also the subject of [6].

FWIW and IIUC, Detlev has a patch for that here:
https://gitlab.collabora.com/detlev/ffmpeg/-/commits/v4l2-request-ext-sps-rps-n8.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
