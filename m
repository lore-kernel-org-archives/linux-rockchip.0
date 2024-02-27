Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54950C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 22:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mO22wjDmmger33s2i9SLCLi0oHrOzVXyNx7l5KR4qyY=; b=G+UuJ3lF5GbvJ4
	z1Yz31Hl0F/ZjEWgqsn7e9o00kxD5dCrAo7JjytZ1STHvc3I661aJxLfvv8RXYTX+SuKqewgWZ12R
	ituvcwSlI+RLulJpP8HhnxfvpnHORlNmN5Q5wv5C017U/UuWYxGzHx1WSCj6WR/pejxXkZCOffzUV
	9TIwfk1dZneg1qErR1v8KzoCwU6Cc4DRw71WYEt2rYO5Xx9ZexOgqEvU/uTSQjlKYi0DopDJALhE6
	YDI0XuMCor1gC732/b80LHbXzys2fECqwM7yP2UgsEciyecSqVTMkdZFwa3XqvDFEUDCJKAiq89U3
	j69KD4CSJN7eNrDO9iFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6DO-0000000785Z-2vtg;
	Tue, 27 Feb 2024 22:46:22 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf6DK-0000000781C-3bEy;
	Tue, 27 Feb 2024 22:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GELtHCqztILJCJyymU5pQS8T2fsqGAS/e9ITGcryoD0=; b=r3ZhuY/60lM3m4cl4kp3YR5KnM
	9SZzwe5SgNk/Q+6Dk7Co7U+crfx6xjdJtiGcrL/TX7PT5dsXKclYLe510taXv65W948NJ5aY1huiK
	WGiWYgy2E58C/SXgKZhVkRl0WOKDE/d+amjDiu7KxYCvQkSgzTPhTtaZjgv5kPSZKrLIuEkCx81+A
	uUbVKxB6G53JrleM1wHNuSABctLyDW2j0sVdTSv3bM54vtfth/9HhYHapbt63t9/UXZHXpUFFyFMi
	cnpirBCn74tDUSmH/9eXXlUAMb94x0a5DKwBlRCx+TpXEQVDF/spXq+ZYARRCs4GFtwx8QK4b+fcS
	8n5dD4ow==;
Received: from [200.173.162.98] (helo=[192.168.52.5])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1rf6CE-0044Ea-FM; Tue, 27 Feb 2024 23:45:10 +0100
Message-ID: <2693770c-0d27-4186-87e1-e55a0a5f17a5@igalia.com>
Date: Tue, 27 Feb 2024 19:45:01 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 29/36] drm/vc4: tests: Remove vc4_dummy_plane structure
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-29-8f4af575fce2@kernel.org>
 <244fe6b9-f295-4c85-908a-014ada0033fa@igalia.com>
 <y7mxj2i56h7bcnonywjdf2eirdqil66k32drw3wb3z7juqr3ph@4u24mlrvxslc>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xjMEZIsaeRYJKwYBBAHaRw8BAQdAGU6aY8oojw61KS5rGGMrlcilFqR6p6ID45IZ6ovX0h3N
 H01haXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT7CjwQTFggANxYhBDMCqFtIvFKVRJZQ
 hDSPnHLaGFVuBQJkixp5BQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQNI+cctoYVW5u
 GAEAwpaC5rI3wD8zqETKwGVoXd6+AbmGfZuVD40xepy7z/8BAM5w95/oyPsHUqOsg/xUTlNp
 rlbhA+WWoaOXA3XgR+wCzjgEZIsaeRIKKwYBBAGXVQEFAQEHQGoOK0jgh0IorMAacx6WUUWb
 s3RLiJYWUU6iNrk5wWUbAwEIB8J+BBgWCAAmFiEEMwKoW0i8UpVEllCENI+cctoYVW4FAmSL
 GnkFCQWjmoACGwwACgkQNI+cctoYVW6cqwD/Q9R98msvkhgRvi18fzUPFDwwogn+F+gQJJ6o
 pwpgFkAA/R2zOfla3IT6G3SBoV5ucdpdCpnIXFpQLbmfHK7dXsAC
In-Reply-To: <y7mxj2i56h7bcnonywjdf2eirdqil66k32drw3wb3z7juqr3ph@4u24mlrvxslc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_144618_904380_2F34F651 
X-CRM114-Status: GOOD (  15.53  )
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

SGkgTWF4aW1lLAoKT24gMi8yNy8yNCAxMDowMiwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBIaSBN
YcOtcmEsCj4gCj4gVGhhbmtzIGZvciB5b3UgcmV2aWV3cyEKPiAKPiBPbiBNb24sIEZlYiAyNiwg
MjAyNCBhdCAwOToyOTozMkFNIC0wMzAwLCBNYcOtcmEgQ2FuYWwgd3JvdGU6Cj4+IE9uIDIvMjIv
MjQgMTU6MTQsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4+PiBUaGUgdmM0X2R1bW15X3BsYW5lIHN0
cnVjdHVyZSBpcyBhbiBleGFjdCBlcXVpdmFsZW50IHRvIHZjNF9wbGFuZSwgc28gd2UKPj4KPj4g
TWF5YmUgSSB1bmRlcnN0b29kIGluY29ycmVjdGx5LCBidXQgaXNuJ3QgdGhlIHZjNF9kdW1teV9w
bGFuZSBzdHJ1Y3R1cmUKPj4gZXF1aXZhbGVudCB0byBkcm1fcGxhbmU/Cj4gCj4gQm90aCBzdGF0
ZW1lbnRzIGFyZSB0cnVlIDopCj4gCj4gdmM0IGl0c2VsZiB1c2VzIHZjNF9wbGFuZSB0byBob2xk
cyBpdHMgcGxhbmUtcmVsYXRlZCBjb250ZW50LCBidXQgaXQKPiB0dXJucyBvdXQgdGhhdCB0aGVy
ZSdzIG5vdGhpbmcgaW4gdGhhdCBzdHJ1Y3R1cmUgYW55bW9yZSBhbmQgdmM0X3BsYW5lCj4gPT0g
ZHJtX3BsYW5lLgo+IAo+IEluIG91ciBtb2NrIGRyaXZlciwgd2UgaGF2ZSBhbm90aGVyIHN0cnVj
dHVyZSBtZWFudCB0byBzdG9yZSB0aGUKPiBtb2NrLXBsYW5lLXJlbGF0ZWQgY29udGVudCB3aGlj
aCBkb2Vzbid0IGhhdmUgYW55dGhpbmcgaW4gaXQgYW55bW9yZSwKPiBhbmQgaXMgdGh1cyBlcXVp
dmFsZW50IHRvIHZjNF9wbGFuZS4KPiAKPiBTbywgYmFzaWNhbGx5LCB2YzRfZHVtbXlfcGxhbmUg
PT0gdmM0X3BsYW5lID09IGRybV9wbGFuZS4KPiAKPiBUaGlzIHBhdGNoIGlzIG9ubHkgYWJvdXQg
Z2V0dGluZyByaWQgb2YgdmM0X2R1bW15X3BsYW5lIHRob3VnaC4KPiAKPiBJcyBpdCBjbGVhcmVy
Pwo+IAoKWWVhaCwgd2l0aCB0aGF0IHBvaW50ZWQgb3V0LCB5b3UgY2FuIGFkZCBteToKClJldmll
d2VkLWJ5OiBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPgoKQmVzdCBSZWdhcmRzLAot
IE1hw61yYQoKPiBNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
