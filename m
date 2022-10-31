Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36019FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+zchosbcJbvUwAnuEuVcoZt7xVgkRnm3yJeIpc3QjY=; b=mgmMKow5Cgzv4k
	I2+8yJn5RLxF3fVJAeJAbzlLmJV8AL3l8jfax9BgxooI88R8jQAUP+kB7tV0s2n+2gxNJN/KoBSny
	KgtadTmYmq8d+MiHMa0v66azEIeoLdpq9pcAjETnRclxtDPTk/vovPCbzdqT/J/uahz8rDDzqEJ+Z
	vx/ciVarGmhyNkUcK2KTd9WuVsx5e5vR3OdpdOdxLFtXVf4bJgo9SYEBDvxJosb7wP1EvbT9qQu5v
	dCiIpW6hvU2IvsGby9xv1GvdHm6ZbaeuopL7pVf7r2g7YUUelDnO59LXiQ7Omk45+gAWNWHQTuQIS
	fs+opcvRiLkxHtBF82vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2l-00CkzL-Kb; Mon, 31 Oct 2022 15:49:43 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2h-00Ckwv-Mw
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231379; x=1698767379;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=quE/JPurgz4Mzf+i5ERxx3tZHeSVqlNfHhCtD91heeA=;
  b=i4SOZeSii2cpZpz1CZDNdxISfbY7V+m2WWUkHd2dttbydU2+7o7NJgD8
   NFhskij1G6f7ImBSbkDxzCRjBD2ijpXo8VjOrqAGyX48OXzR4ibstTuYu
   Syyp9jrLBM9Zr0nMbqcUpwh3Y4yu92SvCv4Vi8F/cM9/COZjBzuI/9rZ2
   g5FGLsIGYPBHYV53xFSsp9DR2BaZnt1lxxmSOfK5kta4AbkvYY/MzBzlq
   aHlC6KeQnr6f0J2TBzTNJm7bwfA9U2kRz6kk5nQLxz26MHZ1/b055PHgn
   6C670Xjz0Z6j06lUEFZHO60C53bIx02Y/lyIDhkmrpViXO1XOR2qi47n9
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645079"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645079"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178890"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178890"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:35 -0700
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org
Cc: tiwai@suse.com,
	perex@perex.cz,
	amadeuszx.slawinski@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	hdegoede@redhat.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Syed.SabaKareem@amd.com,
	Vijendar.Mukunda@amd.com,
	AjitKumar.Pandey@amd.com,
	jiaxin.yu@mediatek.com,
	trevor.wu@mediatek.com,
	Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 1/7] ASoC: codecs: da7219: Introduce set_jack() callback
Date: Mon, 31 Oct 2022 17:02:21 +0100
Message-Id: <20221031160227.2352630-2-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084939_808014_20BD02AE 
X-CRM114-Status: GOOD (  10.05  )
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

RnJvbTogQW1hZGV1c3ogU8WCYXdpxYRza2kgPGFtYWRldXN6eC5zbGF3aW5za2lAbGludXguaW50
ZWwuY29tPgoKQ29kZWMgZHJpdmVyIGZvciBkYTcyMTkgaW1wbGVtZW50cyBqYWNrIGRldGVjdCBm
dW5jdGlvbmFsaXR5LCBidXQgZG9lcwpub3QgaW50ZWdyYXRlIGl0IHdpdGggdGhlIGZyYW1ld29y
ay4gUGxhdGZvcm0gY29tcG9uZW50IGRyaXZlcnMgYXJlCmFjY2Vzc2luZyB0aGUgZnVuY3Rpb25h
bGl0eSB0aHJvdWdoIGludGVybmFsIGRhNzIxOV9hYWRfamFja19kZXQoKQppbnN0ZWFkLgoKQWRk
cmVzcyB0aGlzIGJ5IGltcGxlbWVudGluZyBzZXRfamFjaygpIGZvciB0aGUgY29kZWMuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbWFkZXVzeiBTxYJhd2nFhHNraSA8YW1hZGV1c3p4LnNsYXdpbnNraUBsaW51
eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENlemFyeSBSb2pld3NraSA8Y2V6YXJ5LnJvamV3
c2tpQGludGVsLmNvbT4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL2RhNzIxOS5jIHwgOSArKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zb3VuZC9z
b2MvY29kZWNzL2RhNzIxOS5jIGIvc291bmQvc29jL2NvZGVjcy9kYTcyMTkuYwppbmRleCA0NzQ2
Yzg3MDA0NTEuLjc0NjhlZTRhZjJlYSAxMDA2NDQKLS0tIGEvc291bmQvc29jL2NvZGVjcy9kYTcy
MTkuYworKysgYi9zb3VuZC9zb2MvY29kZWNzL2RhNzIxOS5jCkBAIC0yNjMzLDExICsyNjMzLDIw
IEBAIHN0YXRpYyBpbnQgZGE3MjE5X3Jlc3VtZShzdHJ1Y3Qgc25kX3NvY19jb21wb25lbnQgKmNv
bXBvbmVudCkKICNkZWZpbmUgZGE3MjE5X3Jlc3VtZSBOVUxMCiAjZW5kaWYKIAorc3RhdGljIGlu
dCBkYTcyMTlfc2V0X2phY2soc3RydWN0IHNuZF9zb2NfY29tcG9uZW50ICpjb21wb25lbnQsIHN0
cnVjdCBzbmRfc29jX2phY2sgKmphY2ssCisJCQkgICB2b2lkICpkYXRhKQoreworCWRhNzIxOV9h
YWRfamFja19kZXQoY29tcG9uZW50LCBqYWNrKTsKKworCXJldHVybiAwOworfQorCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IHNuZF9zb2NfY29tcG9uZW50X2RyaXZlciBzb2NfY29tcG9uZW50X2Rldl9k
YTcyMTkgPSB7CiAJLnByb2JlCQkJPSBkYTcyMTlfcHJvYmUsCiAJLnJlbW92ZQkJCT0gZGE3MjE5
X3JlbW92ZSwKIAkuc3VzcGVuZAkJPSBkYTcyMTlfc3VzcGVuZCwKIAkucmVzdW1lCQkJPSBkYTcy
MTlfcmVzdW1lLAorCS5zZXRfamFjawkJPSBkYTcyMTlfc2V0X2phY2ssCiAJLnNldF9iaWFzX2xl
dmVsCQk9IGRhNzIxOV9zZXRfYmlhc19sZXZlbCwKIAkuY29udHJvbHMJCT0gZGE3MjE5X3NuZF9j
b250cm9scywKIAkubnVtX2NvbnRyb2xzCQk9IEFSUkFZX1NJWkUoZGE3MjE5X3NuZF9jb250cm9s
cyksCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
