Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2413C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 09:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jkQKo/LIzxh7/2D2/z4TaWBIUgxV8yOATiJ+E+ZTUO0=; b=A7FgFW+wRcYc/l
	erx+iCbaGP4nOh0TMlwiGMrg8RQTlAAYwO0jcKTKL+g1jinLFHfaL4TzGI1/tiLz3y3fOQxpND8we
	VSH/0Rzc+vVVVDZQhoFwDp90r/3vcMdivBkh3Mz68MUPjN3JGfgxYzj6N6sqnk0UypXHW38gNnmH/
	PHWufD4j5TSDKcYUqneBMbHgEVKDgBJq32Fh6loXxhQLWrkE9QriFkZ6ZaE25HR3WzN8npHuDWdPP
	FrTQRDJ4boPiwpaxq4nmwakhVfgN6mOf5sKZcgJBcExzPv6rSam8483GNymqeKLQSauyM0q+W74Of
	6C7NlnWRfMOsZRiXCKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRsBN-007oeE-7U; Wed, 09 Mar 2022 09:00:33 +0000
Received: from mail.olerise.pl ([46.183.184.59])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRsBK-007oZy-1J
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 09:00:31 +0000
Received: by mail.olerise.pl (Postfix, from userid 1001)
 id A7F8144089; Wed,  9 Mar 2022 09:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=olerise.pl; s=mail;
 t=1646816192; bh=ZNYiuZLXlxCdAPtstEG/gwJieB5RBwA/cHj1SZ3Mpl0=;
 h=Date:From:To:Subject:From;
 b=gwWuH9smheHQz+dyQxYYLg6KCURdbGQI1tvpzuifwQMopgP3MHADBgXgvF9WNDdUj
 LacBgZQ9nbt8qS0CEQGmM2sSOC2wGPzCm5DM2Y6IaJKHjaWTyPl/6Xx4kZ3yxsAPfO
 xbhvjqSfuCo+5i95oViPHSC0tDU/1cAm7iRdgPVf8Gde8VFtI8kw0tTq4GaOKtqMKu
 VANzivebgUSmaaW/9xpkEiEFaoTooBA2DJjKo8C7QepNZPrUD1nZTLhF4fPkRcjczb
 CaLOKRwl4vfRMNApvI5RNdz38aWfP7DYDhEkNmEkEaE1oR/wCJ3GYEebldrAcbERYR
 J+d5YDNsPYi5Q==
Received: by mail.olerise.pl for <linux-rockchip@lists.infradead.org>;
 Wed,  9 Mar 2022 08:55:55 GMT
Message-ID: <20220309084500-0.1.27.ns9r.0.qp4fauc7pc@olerise.pl>
Date: Wed,  9 Mar 2022 08:55:55 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Rudzik"?= <mikolaj.rudzik@olerise.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Nap=C5=82yw_Klient=C3=B3w_ze_strony?=
X-Mailer: mail.olerise.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_010030_261587_0E36EE79 
X-CRM114-Status: UNSURE (   1.85  )
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

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHIFBhxYRzdHdhIG8gbW/FvGxp
d2/Fm2NpIHBvenlza2FuaWEgbm93eWNoIHpsZWNlxYQgemUgc3Ryb255IHd3dy4KCldpZHppbXkg
emFpbnRlcmVzb3dhbmllIHBvdGVuY2phbG55Y2ggS2xpZW50w7N3IFBhxYRzdHdhIGZpcm3EhSwg
ZGxhdGVnbyBjaMSZdG5pZSBwb21vxbxlbXkgUGHFhHN0d3UgZG90cnplxIcgeiBvZmVydMSFIGRv
IHdpxJlrc3plZ28gZ3JvbmEgb2RiaW9yY8OzdyBwb3ByemV6IGVmZWt0eXduZSBtZXRvZHkgcG96
eWNqb25vd2FuaWEgc3Ryb255IHcgR29vZ2xlLgoKQ3p5IG3Ds2fFgmJ5bSBsaWN6ecSHIG5hIGtv
bnRha3Qgendyb3RueT8KCgpQb3pkcmF3aWFtCk1pa2/FgmFqIFJ1ZHppawoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
