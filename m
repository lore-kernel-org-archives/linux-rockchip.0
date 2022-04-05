Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29236C43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 07:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g3MHm6/gAd+CcYBfK60cv4JS9+dhGacH8Zp7RFksdOY=; b=5GjCycEbhrDjs6
	/sj/jt7HKGbGiftJSbMSxkp2rG3rePJ1op6wM2mt+ViXisICtl3peaBIjqJFinc35MMaJrA8OtkWW
	9p7IiqDv9qrx/ArGzF84fB4L/0KZTM23hplRNMugT4gAubjWSqrWjp/h/T1jIgdJ30511eRjO2js+
	QZ+/G25EAsLmu+M2LCm3ztVMRBuOhdRiK5NKdrNEEy/hn0zZJgRs1H86Gbf1mzBvund6yFx4ToeJd
	6t/i4J700EnSfOsEPjfv8EsGfKjmbKZo0FEwfqUErNisCvmfdmDyCpglJoqqKHLafruEATX9dVXQl
	lMGiLcWEMfeEEQl5EiuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbduj-0002He-1C; Tue, 05 Apr 2022 07:47:45 +0000
Received: from mail.bizcall.pl ([192.71.213.112])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbdug-0002Gq-DG
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 07:47:43 +0000
Received: by mail.bizcall.pl (Postfix, from userid 1001)
 id 41ADD41429; Tue,  5 Apr 2022 09:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bizcall.pl; s=mail;
 t=1649144820; bh=L7rZPDqncV/PGNK3vBL4eFyhOA8rMHMu3jCfxnl4mEc=;
 h=Date:From:To:Subject:From;
 b=D7k+0U9k4go9I+oZmz6QzJQpR7cck/1mU7oxFJJx1eoKM75B3OHQH38TCx1QVypCO
 wKRqip4XE6wOrx7+C36etIbMAFI+BXGWf0FB9LZc2o35LBkGWmDYAMsynPVM3EFy07
 Yt59tVwwtVMX1xcR4U/htjoobyGRau3WD03qGYbxrBFZjwqJgPWkQVl8cZgmE66R3p
 1XBRqPuoatkzOBp+0oZvJcX+RPrCCQ6a8/57mvRj9C3HucdpOzK29l7lSMPV5Z3efi
 XCPtp2FYwLAHusgIMiSFcGxEQfx9qCH5FuJ8ysh6pRixnRU4R082fHA5RIeaLUhkVp
 2gjQLqvm63Cfg==
Received: by mail.bizcall.pl for <linux-rockchip@lists.infradead.org>;
 Tue,  5 Apr 2022 07:43:50 GMT
Message-ID: <20220405084501-0.1.1v.5ij9.0.ggnwjr8n9q@bizcall.pl>
Date: Tue,  5 Apr 2022 07:43:50 GMT
From: "Marek Onufrowicz" <marek.onufrowicz@bizcall.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Prezentacja
X-Mailer: mail.bizcall.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_004742_670955_76CAB829 
X-CRM114-Status: UNSURE (   0.22  )
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
YSB0YWtpZWdvIHJvendpxIV6YW5pYSB3IFBhxYRzdHdhIGZpcm1pZS4KCgpQb3pkcmF3aWFtLApN
YXJlayBPbnVmcm93aWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
