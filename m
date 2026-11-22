Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F18E606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 13:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4l4oBN4a;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=cknow-tech.com header.i=@cknow-tech.com header.a=rsa-sha256 header.s=key1 header.b=dM857/fu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hW8e4enNeyPxqzqX13Z2vY5QgwJWKaxubYts6Tf3eUI=; b=4l4oBN4aIwlbYvLLVBaVsbLexd
	pcFDQQ3aCPl2jZygD6rNmNJtRp2B7ERYyPHExCdCfqN1a49RfbB03n0HwjlY21qLSr84vR/BXC2yf
	l5DvQEN5t0bSE242cbW1qEv11+qQmAxPhigClt+Rw8SiXpLyLq9UcuepohWDgWt0+a6gFs10GZsQt
	Xnbn8+cElouu0gqF33rQVLsYWQsn0CV/VtE68v8+pBSSplKndw3D93PS1U4SaVp6snBf6KWJBlV3C
	qQGK8t2YhLb2W4mQH6vw1TMpUd7AIKrHKgb0NckyNRlKrJRXBZczfq297IJICgMLdM5XL6eduZtrO
	q7zV8aIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV7i4-000000018fr-0Bse;
	Sun, 22 Nov 2026 13:34:24 +0000
Received: from out-18.mta1.migadu.com ([2001:41d0:203:375::12] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV7i0-000000018dW-2aJU
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 13:34:23 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=hFEdDqcg2ZlHkL5dY5J1x4B25r/X63b0yKh+YIcEB7A=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1795354454; v=1; x=1795959254;
 b=dM857/fuS3J9FM3yaYV3If+rrr3xntoEZlPeYVNoNZH6mji5DEIeqNPMvEcpwaNdRFbf1vxb
 HyJWDPSCZsa0WfpVwiP/3muYzhaoq/kFSky8jwxba+SGW0bRkn8tgAHYgR2YyUu6LTG8iVsr7Zl
 +9Zc2LPSCiCRcwPGQsM0XJ8+1mc7HrpYDGHu/rWTd54mV3+fk9DqYuZ4yQEGc3tiohYhT3rrbue
 rgroDhkv1/XaKKbHxgWA2z+I7nIt3cn49yISUhkem+4z6kutvx7KnYdJ26o4YrjvcDfBRXgSBzS
 on7SqQBV8Rx8VGpv5sVoRoLZhDA78FU48MPQtfOcmxa2w==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 5d2907f0ba893942;
	Sun, 22 Nov 2026 13:34:14 +0000
X-Mizu-Trace-ID: 5d2907f0ba893942
X-Migadu-Flow: FLOW_OUT
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Sun, 22 Nov 2026 14:34:12 +0100
Message-Id: <DN1S1D7FIF6B.2WHLNV11LRJ6B@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Daniel Golle"
 <daniel@makrotopia.org>, "Detlev Casanova" <detlev.casanova@collabora.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Heiko Stuebner" <heiko@sntech.de>, "Shawn Lin" <shawn.lin@rock-chips.com>,
 "Michael Riesch" <michael.riesch@collabora.com>, "David Heidelberg"
 <david@ixit.cz>, "Christian Hewitt" <christianshewitt@gmail.com>, "Marc
 Zyngier" <maz@kernel.org>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Cc: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>, "Hans Verkuil"
 <hverkuil+cisco@kernel.org>, "Jonas Karlman" <jonas@kwiboo.se>, "Dang
 Huynh" <dang.huynh@mainlining.org>, "Piotr Oniszczuk"
 <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH v5 0/5] media: rockchip: rkvdec: add support for the
 VDPU346 variant
From: "Diederik de Haas" <diederik@cknow-tech.com>
X-Mailer: aerc 0.22.0-31-g5c1c510d2b65
References: <cover.1795191822.git.daniel@makrotopia.org>
 <DN0BCGELZCSC.G0MWCPQU85UO@cknow-tech.com>
In-Reply-To: <DN0BCGELZCSC.G0MWCPQU85UO@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_053421_375904_67AFD4EF 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri Nov 20, 2026 at 9:16 PM CET, Diederik de Haas wrote:
> On Fri Nov 20, 2026 at 6:36 PM CET, Daniel Golle wrote:
>> This series adds the VDPU346 decoder of the RK3566 and RK3568 to the
>> rkvdec driver, for H.264 and HEVC. It continues Christian Hewitt's v3
>> ...
>> Known limits, none of them introduced here:
>>
>> - FFmpeg's v4l2-request hwaccel does not set the HEVC EXT_SPS_ST_RPS
>>   and EXT_SPS_LT_RPS controls, so HEVC through FFmpeg decodes wrongly
>>   on this decoder as on the VDPU381 ("Long and short term RPS not
>>   set"). The handling of these controls is also the subject of [6].
>
> FWIW and IIUC, Detlev has a patch for that here:
> https://gitlab.collabora.com/detlev/ffmpeg/-/commits/v4l2-request-ext-sps-rps-n8.1

FWIW, I submitted and made a minor update to that patch here:
https://github.com/LibreELEC/LibreELEC.tv/pull/11686

which updates the comment that kernel 7.1+ is needed for those controls 
and added the EXT_SPS_ST_RPS and EXT_SPS_LT_RPS split with 64 and 32.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
