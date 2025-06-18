Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4E4C7115B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 08:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tpZ4/7Wdrs/HUNBjDX7j8839l4mnJS51HQ+vi0wl/4Y=; b=DGZ/398Q4HMQCW
	vjPOzX4H15hILYwCHY1J/VCxsntEzDM7WJKgeStjTBdlAxrl7C0IchFaPKOEG72Szx2zBTxy0tgA4
	h+7Kc7y+1sALgIstfRtB+jgHpYH/Jo4MYuWUk420F/P5sRl7gy06qFv7rGLPZXsxdjkViZoDl68hV
	2GZIMX3cht4DO/d9rckKsJ6l5Q/GW/VHd/WoxQnZ/XcsdzPxPugLVtwJpSrmPVaRFq0UKNJyx96d3
	tQG4axQYSwxnRK10SfwR+SN78wePf/3gUVujdKPdfjIdx16ksTp5EA9Sw/EZBCWx+LT9rzfordsfx
	D9VP7mMmtf/v/gCC9GNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRo0R-00000009O9q-3VrY;
	Wed, 18 Jun 2025 08:18:51 +0000
Received: from mail.quantro.pl ([51.195.47.38])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnzf-00000009O1h-3siY
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 08:18:05 +0000
Received: by mail.quantro.pl (Postfix, from userid 1002)
	id 347D926D8B; Wed, 18 Jun 2025 10:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=quantro.pl; s=mail;
	t=1750234311; bh=nKFyL6kHGsUkO+q8agC+zR0Go57BP4LT86ehYkplXn0=;
	h=Date:From:To:Subject:From;
	b=dEaM/r81n4TlACddmyWYbNIUD4RkmK+HEfjslI6Nrz+vFQgpA7/9SZH8e5YHve/I3
	 MeQP+VSF9WxOwqzF6x4R52rC47r9p6zcYcUtBo4VNxwkz61xPpX1G/zvVS/Ax+kL7R
	 b2LmqZQHuSQkrjS1vGdman18Eur0H2LKw2iWA1diNC19MrYpFRiPkZlRdKfvh6Dg5u
	 6w3qx3buLwCEdqhCrFA+oTYEyl+SLpMhMqgTk5Q9SsaGyq0UdJRv/77/+FOQgHdmA8
	 xZMA1epOahbuU8o2Q4eFko1X5lQG5ZRiMbl2HW+rclxnXuXbi2vytM7cymPqXqIZH0
	 k/4l2RMWG6iaQ==
Received: by mail.quantro.pl for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 08:11:18 GMT
Message-ID: <20250618084500-0.1.i9.5im4u.0.kclzg27hwr@quantro.pl>
Date: Wed, 18 Jun 2025 08:11:18 GMT
From: "Ewelina Koprowska" <ewelina.koprowska@quantro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Karta lunchowa
X-Mailer: mail.quantro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_011804_653855_3A241C60 
X-CRM114-Status: UNSURE (   0.15  )
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

U3phbm93bmkgUGHFhHN0d28sCgpjenkgemFzdGFuYXdpYWxpIHNpxJkgUGHFhHN0d28sIGphayB6
d2nEmWtzennEhyB6YWRvd29sZW5pZSBwcmFjb3duaWvDs3cgaSBqZWRub2N6ZcWbbmllIHphb3N6
Y3rEmWR6acSHIG5hIGtvc3p0YWNoIHphdHJ1ZG5pZW5pYT8gCgpPYmVjbmllIGplc3QgbW/FvGxp
d2/Fm8SHIHp3b2xuaWVuaWEgeiBvcMWCYXQgWlVTIGHFvCBkbyA0NTAgesWCIG1pZXNpxJljem5p
ZSBuYSBrYcW8ZGVnbyBwcmFjb3duaWthIHBvcHJ6ZXogZG9maW5hbnNvd2FuaWUgcG9zacWCa8Oz
dy4gCgpaYSBwb21vY8SFIGthcnR5IGx1bmNoIHByYWNvd25pY3kgbW9nxIUgcMWCYWNpxIcgdyBy
ZXN0YXVyYWNqYWNoLCB6YW1hd2lhxIcgamVkemVuaWUgb25saW5lLCBrb3J6eXN0YcSHIHogY2F0
ZXJpbmd1IGN6eSByb2JpxIcgemFrdXB5IHNwb8W8eXdjemUuIFRvIGRvc2tvbmHFgmUgbmFyesSZ
ZHppZSBtb3R5d2FjeWpuZSwga3TDs3JlIHRha8W8ZSB3eXLDs8W8bmlhIGZpcm3EmSBuYSByeW5r
dSBwcmFjeS4KCkNoxJl0bmllIG9wb3dpZW0gd2nEmWNlaiBuYSB0ZW4gdGVtYXQsIGN6eSBtb2ds
aWJ5xZtteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRyYXdpYW0K
RXdlbGluYSBLb3Byb3dza2EKU2VuaW9yIEhSIE1hbmFnZXIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
