Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2782AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 May 2022 10:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hO2UEEkGbWqVMXofyYENzBmeltxeykvJe5GBZ1OXvc=; b=4DHpmOfRM0VzyO
	OWivXHTOhcFqx+1jQB6z9s2QRxfH3Nst6QblXn09LoCbt5NWXMLCjOzntGoFLMi2978trawMu1ECC
	Ky0Yl4tf3xYF6gb/xiNMZALQAaLgD4T53009rhQsHRGgPHaWGrJTjoTCXiv8mZlZ7woRKX+kvZ+W/
	tur4cqzI7oTI7fT7eJcLygA+mmmJDk0D4S5yZlJEsAcB2LUgR7Ug7xvK7epfEtp2qAbFPH3S39lHO
	TSoA4T7140nibgfo7x5tFD1KtZYCF0CzHNmxcxo4x/+xq+jRjGRj/G9wbdabVZyFC45WtLaRGtAEj
	XRx2xKXB+CzPAD809a4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntRWa-007awa-UP; Tue, 24 May 2022 10:12:24 +0000
Received: from hwsrv-970840.hostwindsdns.com ([104.168.149.109]
 helo=box.indicandustries.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntRWZ-007aux-C1
 for linux-rockchip@lists.infradead.org; Tue, 24 May 2022 10:12:24 +0000
Received: from authenticated-user (box.indicandustries.com [104.168.149.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by box.indicandustries.com (Postfix) with ESMTPSA id 3AB571078C8
 for <linux-rockchip@lists.infradead.org>; Tue, 24 May 2022 03:25:26 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=box.indicandustries.com; s=mail; t=1653384326;
 bh=V6VCn7WEbqHjVVQ20/+SYu6rwS1WmTHcxX88g+j430s=;
 h=Reply-To:From:To:Subject:Date:From;
 b=cRUJ5CDBOhImdYRhnxE30fS5b0LJXxu+B9OkS6FZkFydCQ1Qb1HA64mivJT5s+IQ3
 yqJGkOpSz+4+ccvOVFbO7U5AjY0QyJRecW8r38P76Wzo20xmJvtKl+OQUr4keqilWn
 MXhuuCN1EnD3UV2e0milZavsgfYlbAbc6VuEY28i4Wz6KOprMeYBkYUtT+d/8V2+xB
 7m9b375tlT3VquAAvRBVFXNEPkRfMWsHstuqvlKLVW5rn9+WdlFGsju5LDTo/03Pb6
 suRnYBlqAq68Lor9CPzsGAxITGPuhj58NnTSMAQ3Gs1KZLLNBtoDE/64T+K7hM6K7m
 jac7KhKUGznCw==
From: amjad.ali@box.indicandustries.com
To: linux-rockchip@lists.infradead.org
Subject: Hello Sir, I seek your urgent consideration.
Date: 24 May 2022 11:25:25 +0200
Message-ID: <20220524112525.14A5B0895CD6F194@box.indicandustries.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_031223_471524_ECFA6878 
X-CRM114-Status: UNSURE (   1.52  )
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
Reply-To: amjalia90@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpHcmVldGluZ3M/IEkgYW0gQW1qYWQuIEkgd29yayB3aXRoIGEgbGVhZGluZyBCaW8g
RmlybS4gIER1ZSB0byAKdGhlIHNldGJhY2tzIG9mIHRoZSBwYW5kZW1pYywgbXkgY29tcGFueSBo
YXMgb3BlbmVkIGEgYmlkIGluIApzZWFyY2ggb2YgbmV3IHN1cHBsaWVycyBmb3IgYmFzaWMgcmF3
IG1hdGVyaWFscyBuZWVkZWQgaW4gCnByb2R1Y3Rpb24uCgpJIGFtIHNlZWtpbmcgYSByZXByZXNl
bnRhdGl2ZcKgYXMgSSBhbSBhIHN0YWZmLCBJIGNhbiBub3QgYmUgCmludm9sdmVkIGRpcmVjdGx5
LiBJdCBtYXkgbm90IGJlIHlvdXIgYXJlYSBvZiB3b3JrIGJ1dCB0aGUgCnByb2ZpdHMgYXJlIGdy
ZWF0IGFuZCBJIHdpbGwgZ3VpZGUgeW91IHRocm91Z2guIEkgaGF2ZSBhbHJlYWR5IApzb3VyY2Vk
IGEgbG9jYWwgc3VwcGxpZXIgZm9yIHRoaXMuIEkgb25seSBuZWVkIGEgcmVsaWFibGUgCnJlcHJl
c2VudGF0aXZlLgoKUGxlYXNlIGdldCBiYWNrIHRvIG1lIHNvIEkgY2FuIGV4cGxhaW4gdGhpcyBp
biBmdWxsLgoKQW1qYWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
