Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD7CBC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 13:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nB+cP1h8xT9X7Wt6CLIjxIifk7+1A8pUvdQfh5pHs70=; b=WyiD/W4lautgMGMQesh0Xvp9kL
	Bbsnmca8a69Tzlo6kIWc1FQ2fW1yOTdCnANUQ/vqq4cmK/E2J/zE8bme3hFQrNVSeKfvndmtBOhNZ
	is9gryIfdhhh4XuIGs5v5c9pmC4KJ/Eo/2tFdjtjUV9ap6df1FlyJc+de2y8Ce53p5EV5G6NUaju5
	YcYo++WwryvTEaYmiDm1oHxWmyLxZX577KgfPrvRMfnuQDcimDNBnXwNb+IV5aQXy4xTyHxDr6+ON
	reR2IcFn3JabmpoU6MsNOC8H0Ab9qsyb4tYGv/b67aOPXT1CyJW+Yi3672SNBYbBQcLqRntD7ttRu
	4ZprwfVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mua5n-008ayS-W7; Tue, 07 Dec 2021 13:01:12 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mua4y-008aiM-5V; Tue, 07 Dec 2021 13:00:21 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 27FA81FDFE;
 Tue,  7 Dec 2021 13:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1638882016; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+C8znulBKfN2iqCnpcXwfq/A/cdrkCZr52J26lpfUyA=;
 b=IZtx9SM9+SakYOsz8jBa0MNR9U65fWq6gRkSLmuQpgRuufpCzLia6gclbZBIuVRO7xKKXJ
 hluXHKYGlGQ/tw8Ts25/ZPXS2ZygLu+3AE9y2hTzw86NTzsDHYb7b0r6fZzviioo/M0Eyq
 3oqtPjqI30NIbPjjWQwSrH6/QA2J3xY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1638882016;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+C8znulBKfN2iqCnpcXwfq/A/cdrkCZr52J26lpfUyA=;
 b=I7Oay/eG0I6BpwMaEtiqsJPDP0GaIB4GSFJLafQY0bcwh2UoKPh5v0UdaEVy4vSgiPpRDI
 U3jvTYQPcwxIoDBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DFDAA13A78;
 Tue,  7 Dec 2021 13:00:15 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id dOw6Nd9ar2GaPQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Tue, 07 Dec 2021 13:00:15 +0000
Message-ID: <26f988d4-3fac-fcc0-f80a-c9d7516c266b@suse.de>
Date: Tue, 7 Dec 2021 14:00:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH] drm/rockchip: use generic fbdev setup
Content-Language: en-US
To: John Keeping <john@metanate.com>
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20211029115014.264084-1-john@metanate.com>
 <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de> <YX01C6l93I2YPgku@donbot>
 <6e69f9bb-5a1e-7b79-38e8-d2860e5ee615@suse.de>
 <20211101113415.3bed0f62.john@metanate.com> <Ya9LdiutXV7lCOtT@donbot>
From: Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <Ya9LdiutXV7lCOtT@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_050020_411833_C593086E 
X-CRM114-Status: GOOD (  13.25  )
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
Content-Type: multipart/mixed; boundary="===============8940105678141217307=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8940105678141217307==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UbAOQXuN5ozF4VxDiNVJF0Ed"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------UbAOQXuN5ozF4VxDiNVJF0Ed
Content-Type: multipart/mixed; boundary="------------GufJmFGkh9XtWaqveMIfvlqc";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: John Keeping <john@metanate.com>
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Message-ID: <26f988d4-3fac-fcc0-f80a-c9d7516c266b@suse.de>
Subject: Re: [PATCH] drm/rockchip: use generic fbdev setup
References: <20211029115014.264084-1-john@metanate.com>
 <ab7ace79-0148-1efa-ec17-6994bb35fd2f@suse.de> <YX01C6l93I2YPgku@donbot>
 <6e69f9bb-5a1e-7b79-38e8-d2860e5ee615@suse.de>
 <20211101113415.3bed0f62.john@metanate.com> <Ya9LdiutXV7lCOtT@donbot>
In-Reply-To: <Ya9LdiutXV7lCOtT@donbot>

--------------GufJmFGkh9XtWaqveMIfvlqc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMDcuMTIuMjEgdW0gMTI6NTQgc2NocmllYiBKb2huIEtlZXBpbmc6DQo+IA0K
PiBBcmUgeW91IGFibGUgdG8gcGljayB0aGlzIHVwIChhbmQgWzFdKT8gIE90aGVyd2lzZSB3
aGF0IGlzIG5lZWRlZCBoZXJlDQo+IGFuZCB3aG8gc2hvdWxkIHBpY2sgdGhpcyB1cD8NCj4g
DQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMTExMDExMTQ2
MjIuODEzNTM2LTEtam9obkBtZXRhbmF0ZS5jb20vDQo+IA0KDQpJIGFkZGVkIGJvdGggcGF0
Y2hlcyB0byBkcm0tbWlzYy1uZXh0Lg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQoNCi0t
IA0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINClNVU0Ug
U29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnLCBHZXJtYW55DQooSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQpHZXNjaMOk
ZnRzZsO8aHJlcjogSXZvIFRvdGV2DQo=

--------------GufJmFGkh9XtWaqveMIfvlqc--

--------------UbAOQXuN5ozF4VxDiNVJF0Ed
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmGvWt8FAwAAAAAACgkQlh/E3EQov+Cw
Kw/9HsNOGnt0zzCJ/bfdMgu2znBHFFGK6kl9x24z0DjOoWvjlMKWpUfILBnjeJkAf+uqRpI7MOul
oqbt7rHnWPu64tGdqUcFJ0Ta9oiWJg4ow0mSOOUWjStO2LmC4uIGQdjJYtUdoXcghlnnBCICqkLY
bxWZOh1UfXEU59rjSu+ZyY3Eo51ANVdLU8mNwWqEiCNdjN6Uxo27052qkfbgRYQnQQIuLpUoJGg9
ZIB3yS+Jf3uqVYxh8vJs50kW4/4xUWIl8Ye77275AoC8wT5kr7BRcIv6/rqMtr5FmR4yaG8qYm6H
7XTJrb9EzLeSy5To8MY0Z190228alxkhBdT3Qq8BvjlWEIrrU6nRSDdtBiYMRxy5S/fzmDZ/jXhK
wQgys58+1PutAgXPx48H3XbO3NugNwvB4GV697ZIgu+AtSZCbh5RQ7X30hC2zNxbZirYpZ4m/S67
v60uKzWvxKW1YIbsi4Xc5+gJcu6uvJ92BZ+8lpjOlMDx4ajB2u+IsFIvTmv1/p8kbysRaGcjq6dP
rteItmAddk/DTbSz0tLbGr6U9OCgUOrbGXB78Zh/iF3d5V00D0Ct5XQyPGQpaOu+HgnLNWHrkewg
0d77NHE9OZWtp4i3KbuTjTYMtaDTPOe5hMfLkspB3j+TayoukB5+K5gTvIydiWub3ZS5mlHdteGE
ukc=
=exws
-----END PGP SIGNATURE-----

--------------UbAOQXuN5ozF4VxDiNVJF0Ed--


--===============8940105678141217307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8940105678141217307==--

