Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FF68CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 17:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FDsNlNyOZ9T0bplgV4sWfclrCsBnObQJ+tmoPj2GmNk=; b=edvrv+L6DNkizl
	Y2g+cH3lh25pS72j2+Cipq5SqLfBvAwC4YAQFj9JxBNgyYmXCgtYORvE2psi93dbIQ4s+XXjpKORJ
	vfRc/7CCwFfnu9E6SqFirVw3JJDVLLZgapmn3ePAemtkowR7sfRUQL8hCE5HBehD3ShcPpK0+5e5V
	mVKCAF945suM8d2D7daEiFzRwpnghHgrLk+LPtZFz7TgpTssD77HbpWGeuo6aduwj9KWWIFodwWGW
	0h0llNjS4C8xEwuIngKgXWA3WLpbb+nWnRKuC3oWaCzO7d+pm3fXH7UiPWriQi3g+6T54BKLRLs+w
	65hpi1Z34bQ8YI3Wm9RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9ST-000000006vw-2Dau;
	Thu, 21 Aug 2025 17:52:17 +0000
Received: from securitygw1.exwire.com ([216.171.192.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5ER-0000000H2U4-0sI2
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 13:21:32 +0000
X-exwire-MailScanner-EFA-Watermark: 1756386845.78228@LxHZWFgUoZPK9IiCn9QQlA
X-exwire-MailScanner-EFA-To: linux-rockchip@lists.infradead.org
X-exwire-MailScanner-EFA-From: nancymc@exwire.com
X-exwire-MailScanner-EFA-SpamScore: sssssss
X-exwire-MailScanner-EFA: Found to be clean
X-exwire-MailScanner-EFA-ID: 2E4A1286C9A.A4E82
X-exwire-MailScanner-EFA-Information: Please contact jdeverse@exwire.com for more information
Received: from smtp01.exwire.com (smtp01.exwire.com [216.171.192.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by securitygw1.exwire.com (Postfix) with ESMTPS id 2E4A1286C9A
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 04:57:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 securitygw1.exwire.com 2E4A1286C9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=exwire.com;
	s=default; t=1755777435;
	bh=HV6ngFc0kAPeZqm3RhmqrUX5EZoxx49VvdfM3cgWoeI=;
	h=Reply-To:From:To:Subject:Date:From;
	b=Eljl3474Ln5+r3n++xa35Y2voKMpX8D+T8PyLye389Z/lEOKaxVfzGCJEJAFMRLQh
	 vGbR/gfa260OPmbR2vbB68BLKggG5N09RNpTZyNEWEiWvn9FCltFxc0NSen3LuqirB
	 t6ftBBZWGHTkrh8mqFc++DX2DFoQ9TN02IvbIBRQ=
Received: from localhost (localhost [127.0.0.1])
	by smtp01.exwire.com (Postfix) with ESMTP id 96EFA46E0A1
	for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 04:24:58 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp01.exwire.com
Received: from smtp01.exwire.com ([127.0.0.1])
	by localhost (smtp01.exwire.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5a5Sc3K-Js1 for <linux-rockchip@lists.infradead.org>;
	Thu, 21 Aug 2025 04:24:58 -0700 (PDT)
Received: from [45.138.16.152] (unknown [45.138.16.152])
	by smtp01.exwire.com (Postfix) with ESMTPSA id 0255C47000E
	for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 23:25:30 -0700 (PDT)
From: nancymc@exwire.com
To: linux-rockchip@lists.infradead.org
Subject: xl
Date: 20 Aug 2025 23:25:30 -0700
Message-ID: <20250820232530.5F22FA326934BA27@exwire.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_062131_466235_0CFC921E 
X-CRM114-Status: UNSURE (   2.35  )
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
Reply-To: info.superenalotto@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

V2lyIGZyZXVlbiB1bnMsIElobmVuIG1pdHRlaWxlbiB6dSBrw7ZubmVuLCBkYXNzIFNpZSB6dSBk
ZW4gCkdld2lubmVybiBkZXIgasO8bmdzdGVuIFN1cGVyRW5hbG90dG8tWmllaHVuZyBpbiBadXNh
bW1lbmFyYmVpdCAKbWl0IExvdHRvMjQsIEV1cm9NaWxsaW9ucyB1bmQgUG93ZXJiYWxsIGdlaMO2
cmVuLiBTaWUgaGFiZW4gZWluZW4gCmVpbm1hbGlnZW4gR2V3aW5uIHZvbiDigqwzLjg1MC4wMDAg
IGluIGRlciB6d2VpdGVuIEdld2lubmtsYXNzZSAKZ2V3b25uZW4uIFVtIElocmVuIEdld2lubiBh
Ynp1d2lja2Vsbiwgc2VuZGVuIFNpZSB1bnMgYml0dGUgCmZvbGdlbmRlIEluZm9ybWF0aW9uZW4g
cGVyIEUtTWFpbDoKClZvbGxzdMOkbmRpZ2VyIE5hbWU6IExhbmQ6IFdvaG5hZHJlc3NlOiBBbHRl
cjogR2VzY2hsZWNodDogQmVydWY6IApIYW5keW51bW1lcjogV2hhdHNBcHAtTnVtbWVyLgoKSW0g
TmFtZW4gZGVyIE9ubGluZS1Mb3R0ZXJpZWFidGVpbHVuZ2VuIFN1cGVyRW5hbG90dG8sIApFdXJv
TWlsbGlvbnMgdW5kIFBvd2VyYmFsbCBncmF0dWxpZXJlbiB3aXIgSWhuZW4gaGVyemxpY2ggenUg
CklocmVtIEdld2lubi4KCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4KCkZyYXUgS2F0aGVyaW5l
IEZlZGVyaWNvCkxlaXRlcmluIE9ubGluZS1aYWhsdW5nZW4gLyBWYWxpZGllcnVuZ3NtYW5hZ2Vy
aW4KQ29kZS1OYWNocmljaHQ6IDczN0dIUzk4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
