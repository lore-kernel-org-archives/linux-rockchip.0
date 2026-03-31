Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD81E1061B21
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 03:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIC07N2h/Ci1YXt8c9U5jd7vwT9IRrzPEZ3Gwh6jZqg=; b=OqEek/XpKdCM87
	R8Z2jq6OOH9UHs6K7tHbKw33gaTxvNo0MQdb+RxsTA63VKZ5CHKu8HyHPIznF9/HqZeshjiWSCrRV
	8pEU6DDyXfHSLBplDeAcrYPt+GVydESC0d3r/6UXiCqOjDs5E5CZNSwPhh2ccZQzxYmSJ1WYsxbjw
	RnoCj5OSwAM+3JohsVOQ/GenF6uELnePftKXvUVL6o9AVlUHtXgFKXWRBmFZZC0mYUu2L89bj1iS6
	kDTQcYWXH8eB0EZeNl5Fcs2ZrPgxhJJMjvU8kmKanmTBGgSIvtXbEWm/tUs2S54KBmgqOov3biASX
	7hbwS1M4on2/gbAqHRRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbq-0000000CDRY-40xF;
	Tue, 31 Mar 2026 03:17:42 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbo-0000000CDQi-0GPV
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 03:17:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1774926993;
	bh=po6cgYQUd6uza9we04cCL9P4GtuOUVSmelm9ecj8dPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=ZSzIpFVo8hCJIqbhCSr28w/6i3p6jKzyf7Wq1mlNofx6JnEC3G3mX+flKWc3XYOfg
	 N83SUmJQ+KY+Gc4i7Dvt9z1FaTFnBLjh0GXF9+BaYmWmBDPBFUhtrVFmxxtMJAdZxQ
	 +i3xbV5vHkiQHch//N+/P8FlpiFMaWHjSmsVBRSk=
X-QQ-mid: esmtpsz19t1774926991t0fd6fece
X-QQ-Originating-IP: B/7X6/YjpZwXkACn5sUy6oA7OR2oOjx+LTF2eQ6PFnI=
Received: from [172.16.12.51] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 31 Mar 2026 11:16:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3341022901969366898
Message-ID: <1801CF6805B8DD32+0afb49ab-a03c-40f0-92bd-d0b332f8f28e@airkyi.com>
Date: Tue, 31 Mar 2026 11:16:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Synopsys DisplayPort Controller improvements for
 Rockchip platforms
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damon Ding <damon.ding@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
 <FE1BFB774BE13241+54b8a8ce-5a8c-495d-a53f-65a2440924fb@airkyi.com>
 <acphlgK6ZmBitGJL@venus>
 <AFAEA46A791878B0+9fe68e46-8d8f-44f1-80e3-dfad2de51832@airkyi.com>
 <acsoT_i-LfoMoIy_@venus>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <acsoT_i-LfoMoIy_@venus>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MX+1SEN3H+wAprBSZyZpYvedrMS6yPzCfm5hndPD+3dzYT5XYLnSa84T
	JI5/ask68pqN1TfcA5VzCkqX/w3gxWk9mms37P08J4aeux9HO04NK06PBSuXvka64HUSx0F
	1+DbAUaEQWMNFDwbeo4ZDa/ug7EAo1fWSFnlpS0BbQ8iRUD7NQA3MiwiRruLlD/9eRnpiLu
	q5MmKxG8Z6hsn07gUa99XFdgtBknAH9CoQpyLO8NxmknEAwqYzAznBhP3DWw41mjpq1XX0D
	osMPBQ9VBaWmlNEL7u0lSYIMS22MWHHAOx9P5gRGytcRQWljwalW5FdvuGLkPE41X6V6aZc
	At10WBbJzwN3DsBZlxMSJ0ATpZKsqAfmCx3WSiLzIIOfMuNQ56QpoPPOY0gmjorkUKm4fV4
	16FLUFpNQNlSm5DoUW8vfh4X41e3RZRmHxhTD9hC7gV3eeCh8fgbIOdnSZ3DoCqiCk6F5uF
	bTrxuT8mrcwHWxYUqu17mUQ95bnNyat2NVK1ayyRmK8HXTLrODBfrBKkZjVNPa+Qa4kuTPQ
	8Lc7PqnaN9vp8j89WLDly4LX5kXizeBQUexxBwEQwPwB89NgSXrG+B2vF0uPs+GSF1gfsj3
	DnT4BzSPrggUzCxxEW4ZSAAhnC9rySzHUH/UPC43EwLynLG5EtKy18xU8csEOxlerh8q7MY
	tMTnnUbfdNMkVhE2wmZ0mTjRKkCLrRDzYmjZ35fUVQ+B3U6AEaShTUMfwiOBi2Fdvp6aUq3
	U01zMNhvIHnLIw7h5WpjgU+2mxUmEWkbKCIsw6ym+A136cf+8ECeO1sRE6LPvda46HPzKHU
	tNozP9S7LgMHWldWSROGFD97A3WJtes6jiqSkzwlcMZgCCV2OUjnoRpfJYHjO4zvzAbjddB
	iaFOyWi4GlNCe8A7ffRz78BUpRvC/5PloAap47uDRs1bTsDFgoVCrupnnCWXhEiGLJaVpjU
	t8eCpKaRKTezgtXi9wiSyIGazgG64OKxeCVQmQS/mzjIUePZqj5Sey2t2LzMccUcmIZtDom
	mSfOQerVQGAcuJ2gvu
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_201740_742905_BE56105A 
X-CRM114-Status: GOOD (  24.83  )
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

SGVsbG8gU2ViYXN0aWFuLAoKT24gMy8zMS8yMDI2IDEwOjA5IEFNLCBTZWJhc3RpYW4gUmVpY2hl
bCB3cm90ZToKPiBIaSwKPiAKPiBPbiBUdWUsIE1hciAzMSwgMjAyNiBhdCAwOToxODozMkFNICsw
ODAwLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4gT24gMy8zMC8yMDI2IDc6NTAgUE0sIFNlYmFzdGlh
biBSZWljaGVsIHdyb3RlOgo+Pj4gT24gTW9uLCBNYXIgMzAsIDIwMjYgYXQgMDk6MzQ6MTVBTSAr
MDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+Pj4+IFRoZXJlIGFyZSB0d28gcGFydHMsIHdoaWNo
IHBvc3NpYmx5IG5lZWQgc29tZSBkaXNjdXNzaW9uOgo+Pj4+Pgo+Pj4+PiAgMS4gSSBhZGRlZCBh
IGRlZGljYXRlZCBicmlkZ2UgY2FsbGJhY2sgZm9yIG91dC1vZi1iYW5kIGhvdHBsdWcgZXZlbnRz
LAo+Pj4+PiAgICAgd2hpY2ggaXMgc2VwYXJhdGUgZnJvbSB0aGUgaG90cGx1Z19ub3RpZnkuIEkg
aGF2ZSBhIGZlZWxpbmcsIHRoYXQKPj4+Pj4gICAgIHRoZXJlIG1pZ2h0IGJlIGEgYmV0dGVyIHNv
bHV0aW9uLCBidXQgaGF2ZW4ndCBmb3VuZCBpdC4KPj4+Pgo+Pj4+IENvdWxkIHlvdSBleHBsYWlu
IHdoYXQgYW4gb3V0LW9mLWJhbmQgaG90cGx1ZyBldmVudCBpcz8KPj4+Pgo+Pj4+IENhbid0IHRo
ZSBkcml2ZXJzL3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNwbGF5cG9ydC5jIHJlc3BvbmQgdG8gdGhl
c2UKPj4+PiBob3QtcGx1ZyBldmVudHM/IFRoYW5rIHlvdS4KPj4+Cj4+PiBUaGF0IGlzIHdoYXQg
Z2VuZXJhdGVzIHRoZSBvdXQtb2YtYmFuZCBob3RwbHVnIGV2ZW50IGluIHRoZSBmaXJzdAo+Pj4g
cGxhY2UgdmlhIGRybV9jb25uZWN0b3Jfb29iX2hvdHBsdWdfZXZlbnQoKS4gVGhlIG9vYiBpbiB0
aGF0IGNhbGwKPj4+IG1lYW5zIG91dCBvZiBiYW5kLgo+Pj4KPj4+IElmIHlvdSBsb29rIGF0IHRo
YXQgZnVuY3Rpb24gaXQgY2FsbHMgb29iX2hvdHBsdWdfZXZlbnQoKSBjYWxsYmFjawo+Pj4gb24g
dGhlIERSTSBjb25uZWN0b3IsIHdoaWNoIGlzIHRoZW4gaW1wbGVtZW50ZWQgYnkKPj4+IGRybV9i
cmlkZ2VfY29ubmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkuIFRoaXMgZnVuY3Rpb24gY2FsbHMg
dXNlcwo+Pj4gdGhlIG5vcm1hbCBocGQgaGFuZGxpbmcgKHNoYXJlZCBieSBpbi1iYW5kIGFuZCBv
dXQtb2YtYmFuZCkgYW5kIEknbQo+Pj4gcGF0Y2hpbmcgaXQsIHNvIHRoYXQgdGhlIGJyaWRnZXMg
YXJlIGF3YXJlIG9mIGhwZCBleHBsaWNpdGx5IGJlaW5nCj4+PiBwcm92aWRlZCBvdXQtb2YtYmFu
ZC4KPj4+Cj4+Cj4+IEFoLCBJJ20gYWN0dWFsbHkgbW9yZSBjb25jZXJuZWQgd2l0aCB0aGUgc3Bl
Y2lmaWMgdHlwZXMgb2YgZXZlbnRzLgo+PiBGb3IgZXhhbXBsZSwgdGhlICJleHBsaWNpdGx5IiBw
cm92aWRlZCBIUEQgeW91IG1lbnRpb25lZCBoZXJlLiAKPj4gSXNuJ3QgZHJtX2Nvbm5lY3Rvcl9v
b2JfaG90cGx1Z19ldmVudCBhYmxlIHRvIHByb3ZpZGUgdGhvc2U/Cj4+Cj4+IEkgYXNzdW1lIHlv
deKAmXJlIGxvb2tpbmcgZm9yIGFuIG9vYiBldmVudCB0aGF0IGlzIHByb3BhZ2F0ZWQgYWxvbmcg
dGhlCj4+IGJyaWRnZSBjaGFpbiwgcmF0aGVyIHRoYW4gYXQgdGhlIGNvbm5lY3Rvci4gSXMgdGhh
dCBzbz8gVGhhbmsgeW91Lgo+IAo+IFRoZSBjb25uZWN0b3IgaGFzIGEgZGVkaWNhdGVkIGhvdHBs
dWcgb29iIGV2ZW50IGNhbGxiYWNrLCBidXQgSSBvYnZpb3VzbHkKPiBuZWVkIHRoZSBldmVudCBv
biB0aGUgYnJpZGdlLCBzaW5jZSB0aGUgRFAgY29udHJvbGxlciBpcyBpbXBsZW1lbnRlZCBhcwo+
IGJyaWRnZS4gVGhlIGV4aXN0aW5nIGluZnJhc3RydWN0dXJlIHByb3BhZ2VzIGl0IGRvd24gdG8g
dGhlIGJyaWRnZSBjaGFpbgo+IHZpYSBkcm1fYnJpZGdlX2hwZF9ub3RpZnkoKSwgd2hpY2ggY2Fu
IGJlIHJlY2VpdmVkIGJ5IHRoZSBEUCBjb250cm9sbGVyCj4gdmlhIHRoZSAuaHBkX25vdGlmeSBj
YWxsYmFjayBpbiBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcy4KPiAKPiBUaGUgcHJvYmxlbSBpcywg
dGhhdCB0aGlzIHJlY2VpdmVzIGV2ZW50cyBmb3IgaW4tYmFuZCBBTkQKPiBvdXQtb2YtYmFuZCBo
b3RwbHVnIGV2ZW50cy4gVGhhdCdzIHdoeSBJIGFkZGVkIGEgbmV3IGJyaWRnZQo+IGNhbGxiYWNr
LCB3aGljaCBob29rcyBpbnRvIHRoZSBleGlzdGluZyBmcmFtZXdvcmssIGJ1dCBvbmx5IGRlbGl2
ZXJzCj4gb3V0LW9mLWJhbmQgZXZlbnRzIGFuZCBubyBpbi1iYW5kIGV2ZW50cy4KPiAKCkhvdyB0
byBkaXN0aW5ndWlzaCBiZXR3ZWVuIGluLWJhbmQgYW5kIG91dC1vZi1iYW5kIGV2ZW50cz8gSW4g
eW91ciBwYXRjaDQ6CgpAQCAtMTgwLDYgKzE4MCwxMiBAQCBzdGF0aWMgdm9pZCBkcm1fYnJpZGdl
X2Nvbm5lY3Rvcl9vb2JfaG90cGx1Z19ldmVudChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dAogCXN0cnVjdCBkcm1fYnJpZGdlX2Nvbm5lY3RvciAqYnJpZGdlX2Nvbm5lY3RvciA9CiAJCXRv
X2RybV9icmlkZ2VfY29ubmVjdG9yKGNvbm5lY3Rvcik7CiAKKwkvKiBOb3RpZnkgYWxsIGJyaWRn
ZXMgaW4gdGhlIHBpcGVsaW5lIG9mIGhvdHBsdWcgZXZlbnRzLiAqLworCWRybV9mb3JfZWFjaF9i
cmlkZ2VfaW5fY2hhaW5fc2NvcGVkKGJyaWRnZV9jb25uZWN0b3ItPmVuY29kZXIsIGJyaWRnZSkg
eworCQlpZiAoYnJpZGdlLT5mdW5jcy0+b29iX25vdGlmeSkKKwkJCWJyaWRnZS0+ZnVuY3MtPm9v
Yl9ub3RpZnkoYnJpZGdlLCBjb25uZWN0b3IsIHN0YXR1cyk7CisJfQorCiAJZHJtX2JyaWRnZV9j
b25uZWN0b3JfaGFuZGxlX2hwZChicmlkZ2VfY29ubmVjdG9yLCBzdGF0dXMpOwoKCkhlcmUsIGRy
bV9icmlkZ2VfY29ubmVjdG9yX2hhbmRsZV9ocGQoKSB3aWxsIGV2ZW50dWFsbHkgY2FsbDoKCglk
cm1fZm9yX2VhY2hfYnJpZGdlX2luX2NoYWluX3Njb3BlZChicmlkZ2VfY29ubmVjdG9yLT5lbmNv
ZGVyLCBicmlkZ2UpIHsKCQlpZiAoYnJpZGdlLT5mdW5jcy0+aHBkX25vdGlmeSkKCQkJYnJpZGdl
LT5mdW5jcy0+aHBkX25vdGlmeShicmlkZ2UsIGNvbm5lY3Rvciwgc3RhdHVzKTsKCX0KClRoZXJl
Zm9yZSwgZm9yIHRoZSBicmlkZ2UgY2hhaW4sIHlvdSB3aWxsIGNhbGwgaHBkX25vdGlmeSBhbmQK
b29iX25vdGlmeSBzZXBhcmF0ZWx5LgoKVGhpcyBsb29rcyByZWR1bmRhbnQsIGhvdyBkbyB5b3Ug
ZGlzdGluZ3Vpc2ggYmV0d2VlbiB0aGVtPwoKPiBUaGUgcHJvYmxlbSB3aXRoIHJlY2VpdmluZyBp
bi1iYW5kIGluIGFkZGl0aW9uIHRvIG91dC1vZi1iYW5kIGlzCj4gdGhhdCB0aGUgb3V0LW9mLWJh
bmQgc2lnbmFsIHNob3VsZCBzZXQgdGhlIGhvdHBsdWcgcGluIGFjY29yZGluZ2x5LAo+IGJ1dCB0
aGUgaW4tYmFuZCBkZXRlY3Rpb24gYWxzbyBjaGVja3MgdGhlIGFjdHVhbCBEUCBsaW5rLiBJZiB0
aGUgT09CCj4gaG90cGx1ZyBzaWduYWwgc2F5cyAibm90aGluZyBwbHVnZ2VkIiwgdGhlIGhvdHBs
dWcgcGluIHNob3VsZCBiZQo+IGZvcmNlZCBvZmYsIGJ1dCBpZiB0aGUgRFAgbGluayBkZXRlY3Rp
b24gZmFpbHMsIHRoZSBob3RwbHVnIHBpbgo+IHNob3VsZCBub3QgYmUgZm9yY2UgZGlzYWJsZWQs
IGFzIHRoYXQgbWFrZXMgYW55IGZ1cnRoZXIgZGV0ZWN0aW9uCj4gdHJpZXMgdXNlbGVzcy4KPiAK
Ci0tIApCZXN0LCAKQ2hhb3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
