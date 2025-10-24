Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869D6CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 04:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WP/0Dq7quYGlbtMF9J5Sl11t+RvWM0ybg1OQU7zGDjM=; b=OYe62DVviREbcz5MIX8JTa+18L
	o22W5sfoUySQDRM2jN9qhpoq8exoRcSX0Fm4H9wchOIR/3yAyKxq2BILsUTAFyeekXyp/o+OW2eTJ
	zrLfLGSSKg4fae1k1kEWAocM9J3QaVdnz8zimKbzy3sADLoXOyhDkFdZ3Kz6RIR2PCunDj8mY7M5I
	dVf0atN7Bw4st3DVqJR9LBry+LM/YoIC3e103uwROUISsRqqwtBG4Bm1iNFIhKydRRPoIgaT6MWtR
	dRPm7gY1r9ObSv6hrEuPwbDZE/aBusUUEc6ww/DZ3fNTxddaHvRFetUaHU3n91tmU6H4WHVcYVeFG
	eaWy996g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC9QI-00000008EMO-1K8e;
	Fri, 24 Oct 2025 04:29:06 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([81.169.146.167])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC9QD-00000008EM0-3qza
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 04:29:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761280092; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=pmeDQOkGAYfpG9ulR3RtsQiQ+CTCWFh30kP2trRjiD4fNmtSYF8WkejbFsD2+r5fyg
    97kIYrNXxDTlgkr6WS7IqUQ/tqjtSe2r/HtWR2IhR5NyQP/lgJHanl0SnwnWiE6lxQWl
    EyRb/ct3HAS80szrCsyiCrwNudvrTjoWZ/N//CbOIpihNX6jrQl6cr1CoiPkFNO4GOdO
    lcFcM8uDn4e/p3vZ39SbNQ2wXAeiVNCPATf/YcIgOI0TwwH7SJUeKj4ig/ue/l040k/0
    FvTvgQCpAffw792RNhbRXv8sy49XgbiGgaEpcGKTBtz5hf9y+PJkvCt5zILPDbk2hvUe
    PnHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1761280092;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Cc:Date:
    From:Subject:Sender;
    bh=oK2G3VTMLLo2HkG9J5SCJGjImSRIoXFlhPE5LjCqFBc=;
    b=ZMPYvrGnFNf5W0TBJPG+0ko4+FUMruGHCeNB58f51anumH1AZAuoQfgrXfqf8K8W3i
    ZkMrRa5xP3Ik3UpCrtPQqvyBVmRn0a1eVyMbC493k8oMysAzQBKEZBfvZqbIW99/EkAL
    YlorDZKrYo91z7E3+a7ZMFznonFj6e3vfSuDiwp2NXZJEO8J5MFK+sn7OZtsXdMLsjfn
    zfw78WtzB7kd53iF2GwnBQ5Mh6+L9FSD0HqVWjAVpswyi0jCQQNEjvSPcui+C2DyBp9Y
    0+NBL8QWrzGrVqdh1Ebp38ek92XjXgoqKrnvmphx81GKxTHFfZZ/84RbQxMWfw66n/QO
    nx/g==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1761280092;
    s=strato-dkim-0002; d=xenosoft.de;
    h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Cc:Date:
    From:Subject:Sender;
    bh=oK2G3VTMLLo2HkG9J5SCJGjImSRIoXFlhPE5LjCqFBc=;
    b=tTUfW6pzZ4tvboyY5Cnxn65DZ1wIeYbY1MWSfZRblGiIC9H/bFZR82VMDdexAsG6/t
    S68MGFE+knoO9gupyypUYaxeC991Ta8uBHkQ+j5/CmIB0JTFlMIZT5xDk/qDEr/tfzKi
    6j6KRwVEBQmq79u2DPBA3mX5ikQRGMwp3rIanqdz4SvHnmrNMJWcW/fUxuTYCapfuYTb
    M5vL1H1r2jR+DMGOYzal7+BXu8eIp97V3PZtVS8HD+FapCsfMTjQ4i1eux+WNzKOCuPu
    4Kr5fWWvfQ9qoAkB7Q5EhZhn2kkMKBsIYE3iQH5CfpeLATfLAy9cVmdHNELAOgk2tnCs
    IjHg==
X-RZG-AUTH: ":L2QefEenb+UdBJSdRCXu93KJ1bmSGnhMdmOod1DhGN0rBVhd9dFr4thIFiqT9BURIi+l6Rvg"
Received: from void-ppc.a-eon.tld
    by smtp.strato.de (RZmta 53.4.2 DYNA|AUTH)
    with ESMTPSA id e2886619O4SB2Ej
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 24 Oct 2025 06:28:11 +0200 (CEST)
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
To: Bjorn Helgaas <helgaas@kernel.org>, linux-pci@vger.kernel.org
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 FUKAUMI Naoki <naoki@radxa.com>, Herve Codina <herve.codina@bootlin.com>,
 Diederik de Haas <diederik@cknow-tech.com>, Dragan Simic
 <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, mad skateman <madskateman@gmail.com>,
 hypexed@yahoo.com.au, "R.T.Dickinson" <rtd2@xtra.co.nz>
References: <20251023182525.GA1306699@bhelgaas>
From: Christian Zigotzky <chzigotzky@xenosoft.de>
Organization: A-EON Open Source
Message-ID: <b48b7ec8-09dd-fce4-c957-5fbbf66acd4e@xenosoft.de>
Date: Fri, 24 Oct 2025 06:28:11 +0200
X-Mailer: BrassMonkey/33.8.2
MIME-Version: 1.0
In-Reply-To: <20251023182525.GA1306699@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_212902_180592_EFD0C181 
X-CRM114-Status: UNSURE (   7.53  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjMvMTAvMjUgMjA6MjUsIEJqb3JuIEhlbGdhYXMgd3JvdGU6CiA+PiAtLS0KID4+IEkgaW50
ZW5kIHRoaXMgZm9yIHY2LjE4LXJjMy4KID4+CiA+PiBJIHRoaW5rIGl0IHdpbGwgZml4IHRoZSBp
c3N1ZXMgcmVwb3J0ZWQgYnkgRGllZGVyaWsgYW5kIEZVS0FVTUkgCk5hb2tpIChib3RoCiA+PiBv
biBSb2NrY2hpcCkuwqAgSSBob3BlIGl0IHdpbGwgZml4IENocmlzdGlhbidzIHJlcG9ydCBvbiBw
b3dlcnBjLCBidXQgCmRvbid0CiA+PiBoYXZlIGNvbmZpcm1hdGlvbi4KID4+CgpIZWxsbyBCam9y
biwKClRoYW5rcyBhIGxvdCBmb3IgZml4aW5nIHRoZSBpc3N1ZS4gOi0pCgpJIHdpbGwgdGVzdCB0
aGUgUkMzIG9mIGtlcm5lbCA2LjE4IHdpdGggYWN0aXZhdGVkIENPTkZJR19QQ0lFQVNQTSBhbmQg
CkNPTkZJR19QQ0lFQVNQTV9ERUZBVUxUIG5leHQgd2Vlay4KCkhhdmUgYSBuaWNlIHdlZWtlbmQs
CgpDaHJpc3RpYW4KCi0tIApTZW50IHdpdGggQnJhc3NNb25rZXkgMzMuOC4yIAooaHR0cHM6Ly9n
aXRodWIuY29tL2Noemlnb3R6a3kvV2ViLUJyb3dzZXJzLWFuZC1TdWl0ZXMtZm9yLUxpbnV4LVBQ
Qy9yZWxlYXNlcy90YWcvQnJhc3NNb25rZXlfMzMuOC4yKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
