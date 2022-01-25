Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B87C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 09:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tWvCC0HkGv6OrP/3l+kAkvEEfEfR9i+I5+hyxs21LA=; b=i2jU8dM26Mldba
	cAKwRGOdgRZpckcRg0aSPbGXhLyW9gwDwIXXIFhQZY6QjqwxC10s/QGyPlUUkbEyZeP4ysCH3dfUV
	74PYXKVknvq3HXUFambLEfnmjDZandleRfQ/F3cyP+QmscOng3PawpJquK/UhVyi4gk+R3KUFycY2
	ED1GysEkumsOU7hb7qBcbruzQfGgq4RB30Om3XxVIWoG77tdeaShCzPuoBIvTazJe0uyfMgtLPXPj
	x819HCu9C3Ir2bm9UCzr2vSCazTMWH+6Qn3aOQ05uO33nObW3gkrylBDSlAy3/3sP18KvpBHpuLKk
	tKP4HKZK3ZG6b/bTjcVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCIOy-007Fwu-Ik; Tue, 25 Jan 2022 09:46:12 +0000
Received: from mail.trueanalyze24.com ([149.154.157.156])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCHw8-0073ui-55
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 09:16:25 +0000
Received: by mail.trueanalyze24.com (Postfix, from userid 1001)
 id 5DFD341F40; Tue, 25 Jan 2022 09:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trueanalyze24.com;
 s=mail; t=1643102182;
 bh=EGenFkmmv/iHCwB4AbTzX8IXCMu1xRW+9eep7HJGZMM=;
 h=Date:From:To:Subject:From;
 b=WVPr+FisU5fZb5lqsCJfKqyssppu3RfglZAWRwdnJ/801JubgJPFvRXLJsWoSPvIX
 8668IxGxcxYg9YDJVZ9Cc0J6mtk88ZMyFne1tg3wa3oYq6lZAzDKGBOG3nPomj9j4n
 JZy20wg3nLAwkesvesokQG73rjugNswpd3dXyf6iSoSP/95zLe0tjcKdjJBcnfNBCl
 eKb2Zg4nre/jcmU9rZo5ygmWMTIHyUW+AKikavHiY+vWKP/7ncn2rS2dzG41SRghnm
 k1osGRKfSMMWHqiDnJ/y+AGe5YYBZnm6A+elzAsuNlVCPhwu2dI4oNW2oTFc3wqLa0
 OefQhWhUPfrGQ==
Received: by mail.trueanalyze24.com for <linux-rockchip@lists.infradead.org>;
 Tue, 25 Jan 2022 08:57:25 GMT
Message-ID: <20220125084505-0.1.1b.e8b0.0.069gteejpv@trueanalyze24.com>
Date: Tue, 25 Jan 2022 08:57:25 GMT
From: "Mateusz Talaga" <mateusz.talaga@trueanalyze24.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.trueanalyze24.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_011624_415694_3DDD4E38 
X-CRM114-Status: UNSURE (   1.86  )
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
