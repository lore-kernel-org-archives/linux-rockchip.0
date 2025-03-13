Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76E37C28B28
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 09:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRgAYM6OyBnMS/ZFbw0s0eM7ndjMHF0ncQuF1ko+tqw=; b=1yKEnP/LFyrsNJ
	73kiKpzJYFD06mtQ7LTj3w05cqzOLd1VzoMmunoROHAVCElXVCCTYJ+KvErkStAhv4au8v9QgS3DE
	0IUZA/z8839Im809O3AmrCDqJgESJZUP3EsJMlfyIYIVffsa9GH6B33U7+yB0wrnMgafJ1UzZtiH+
	8qkyHL+G4VEtRTp9tyCbB4Ig8+kzlafnkQ/o1yWLcojvvKzvn3aAruWerJKfzMciAO1rGS4szglDA
	9NQrrkbLj2sGloFIkggLoHu9C46Dkr2aSpaw1APghpbuTUGemGzm/T5FToUWVCvI6STCiL4ATwEiP
	A85E2Abn02+tQCV9lUHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tseRH-0000000Adfa-1sfV;
	Thu, 13 Mar 2025 09:01:15 +0000
Received: from mail.novaplan.pl ([51.195.118.1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tseNR-0000000AdAH-2bdl
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Mar 2025 08:57:18 +0000
Received: by mail.novaplan.pl (Postfix, from userid 1002)
	id 281FBA4522; Thu, 13 Mar 2025 09:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novaplan.pl; s=mail;
	t=1741856236; bh=jxb0oDMobd7GaIcoqojTSF8ZoNcoVg4kM8ohJkoHKb8=;
	h=Date:From:To:Subject:From;
	b=gvx2uvB+GEpK8F4RW7g1pE1GJMXEFpSNzOQsRGZo71z9+QBJs19wggQ9QyDRKYKDM
	 FzMz2ZWfEPoeUPDtlQdvgMnKa6hkuWqIhu+lNj56BzTgIZD9xLaLRQvAVNbNps24j7
	 KtMpb5YMT25PjWkQt42hnQhY5mlgw4dRQSpHVJM1NvdjMkBkHsY1q9xOXH0jDihJKa
	 rhBkj7wMo9R9iGm0j2gp9KOu14pdGMXaSJ+3p/usAkmqs7snmYqV28f8Ih9hLDA3S5
	 6jmIYsEmfX8cOOhHjN5NRCgl8XEjz9yhUtTAFXXcILdASxDZKqAqeJ253EEIZG8FV8
	 P1IBQ0xZhobSQ==
Received: by mail.novaplan.pl for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 08:56:18 GMT
Message-ID: <20250313084500-0.1.ke.1g4cq.0.pso618n2zn@novaplan.pl>
Date: Thu, 13 Mar 2025 08:56:18 GMT
From: "Adrian Liszka" <adrian.liszka@novaplan.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.novaplan.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_015717_823408_F5E4A5E9 
X-CRM114-Status: UNSURE (   0.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKWiBwb3pkcm93aWVuaWFtaQpBZHJpYW4gTGlzemthCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
