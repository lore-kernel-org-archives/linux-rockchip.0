Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 712F1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Feb 2022 09:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tWvCC0HkGv6OrP/3l+kAkvEEfEfR9i+I5+hyxs21LA=; b=4g5BKugl2NV70f
	8YQW7+bvvSG9TjFKcxcBrUT3D/UY0OqflM2FsThOAUp6wlLim0RiMIiuF8M4m0F6ddVYZzBMzNhyu
	446rYj59bWYVBBWwX4EC6NUKn5/8lG09CvEqeyooNauVpUnxYwGOj1pDujIO61zwL9aycvgsgJdZy
	CSVFuXA9hwhIIz9Dch/U0HC5Y09Fx2IHmf6fDHml09lyKco+mPbE6PKJ1ROfOU2IVZ/a1tzqV5k4Y
	ujnTf24/Acy3FZbK77ciB1GUOvo2s0AvtnWTOKXTJwfFY41ILEvycwocIgxejznStJSdvbJd1m94p
	lCgAkOcOVnFetr+GAw9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFCF0-00EoWs-OX; Wed, 02 Feb 2022 09:47:54 +0000
Received: from mail.trueanalyze24.com ([149.154.157.156])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFCEx-00EoQb-Au
 for linux-rockchip@lists.infradead.org; Wed, 02 Feb 2022 09:47:52 +0000
Received: by mail.trueanalyze24.com (Postfix, from userid 1001)
 id 0C20743742; Wed,  2 Feb 2022 10:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trueanalyze24.com;
 s=mail; t=1643795108;
 bh=EGenFkmmv/iHCwB4AbTzX8IXCMu1xRW+9eep7HJGZMM=;
 h=Date:From:To:Subject:From;
 b=yfehTbl+kuEhySMz1lpmCAlbbRdLqrmgQpBeGr55eOJiRgwZH9Kg2oipzByTAXZnR
 qOMmcZBanFTiqOwsd62ET/kHjBwzq4pQHoYdjb3XrmkwkOq3Lmg63U2nE4xoIr6Q0M
 DJbULDxeQI5QTgPul+9JXwGOFil0b+ftQnJsKfM47VSJBFW88g1H5a8/MBe8Y693tY
 dj5LrBqQ84JsrIraHlA2r5TfWD4dbwmISGpmOXFijeIKx/P3AEeFU83UNPY34baZxj
 iMTjc4GGED7I7BiDhto8oH9wJvmlwoX2+9MFNhSs3S2BQ4/PEz5m/48mILuNEetj+M
 KMio1jshZVskw==
Received: by mail.trueanalyze24.com for <linux-rockchip@lists.infradead.org>;
 Wed,  2 Feb 2022 09:28:42 GMT
Message-ID: <20220202084511-0.1.1h.h5jx.0.dng4k2oy3b@trueanalyze24.com>
Date: Wed,  2 Feb 2022 09:28:42 GMT
From: "Mateusz Talaga" <mateusz.talaga@trueanalyze24.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.trueanalyze24.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_014751_549592_3E45861A 
X-CRM114-Status: UNSURE (   2.34  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5IQoKQ3p5IG3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgcm96d2nEhXphbmllLCBr
dMOzcmUgdW1vxbxsaXdpYSBtb25pdG9yaW5nIGthxbxkZWdvIGF1dGEgdyBjemFzaWUgcnplY3p5
d2lzdHltIHcgdHltIGplZ28gcG96eWNqxJksIHp1xbx5Y2llIHBhbGl3YSBpIHByemViaWVnPwoK
RG9kYXRrb3dvIG5hc3plIG5hcnrEmWR6aWUgbWluaW1hbGl6dWplIGtvc3p0eSB1dHJ6eW1hbmlh
IHNhbW9jaG9kw7N3LCBza3JhY2EgY3phcyBwcnplamF6ZMOzdywgYSB0YWvFvGUgdHdvcnplbmll
IHBsYW51IHRyYXMgY3p5IGRvc3Rhdy4KClogbmFzemVqIHdpZWR6eSBpIGRvxZt3aWFkY3plbmlh
IGtvcnp5c3RhIGp1xbwgcG9uYWQgNDkgdHlzLiBLbGllbnTDs3cuIE1vbml0b3J1amVteSA4MDkg
MDAwIHBvamF6ZMOzdyBuYSBjYcWCeW0gxZt3aWVjaWUsIGNvIGplc3QgbmFzesSFIG5hamxlcHN6
xIUgd2l6eXTDs3drxIUuCgpCYXJkem8gcHJvc3rEmSBvIGUtbWFpbGEgendyb3RuZWdvLCBqZcWb
bGkgbW9nbGliecWbbXkgd3Nww7NsbmllIG9tw7N3acSHIHBvdGVuY2phxYIgd3lrb3J6eXN0YW5p
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpaIHBvd2HFvGFuaWVt
LApNYXRldXN6IFRhbGFnYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
