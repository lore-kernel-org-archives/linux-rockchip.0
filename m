Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E86C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 07:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTbiSKcljv/AwDUW/yqWH7/497pHK8PzSYzJDhcCZV4=; b=b2ppsCK30U6jL/
	SPsSi7O4EIEIJBm9WJCA/GRfmV3a2zqnThEliLnXOpuzCEnBpPOp4o2gFWzA23zjVb/bU9X8J8/wM
	jbvuJrmSyqXFjCNCwalgn0lHXbrnIMIW4QfNOs15jZ4S0QAXS42Vr8UHVUdvLXbovxyEzIV5BCXXy
	GCskFiMDzbe52Z4CXxx8z4oj97RuTCqMPPaYPw5ONyEGqpJfF+F6xUHrX3zYWBl+HF4z60ViCy80x
	nSy3LsCmazEPbBhx0PEyz5d1Ac//pjg9Hn5bvtuf6H50QfX6SNSZ5Ww47lv/umuNsNTADaggNjVHZ
	AgFMx2CDw0Ouw5SsMRwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKC8Y-00000003xji-25Zd;
	Thu, 20 Jun 2024 07:23:14 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKC8U-00000003xj1-49DU
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 07:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1718868182; x=1719472982; i=markus.elfring@web.de;
	bh=eDz2R6JnnSpAZQdGs1gL+410Vp3uQBbaPn1UmTzECBQ=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=SgYx1qdcn6qZMHIwNwBkOIh827yC3Xm8B2vc/qI61lvzrVoQAXv/PN/CR9egxUJo
	 vI2fPLFXFwxQzP5hWaBBIvRB9M27hg5kTaWSxYISf30qXrmuQ3yQ6eIrD+CBG6T36
	 na7vSpxRVkWtNUAtmmepfZeGpb4sCSvBNr9UbB+5pbL4V8kiNxbdl6IT0WdhVdgC6
	 wgb3RpjY0RX19Nbq++cio0V/W7RDIpUPhoig8rqvTp5107kxMu0dZba0u/mBA7rCU
	 ADbpyAVVxEN+bpEl23BOFaj3apIKXbei6Y81fLzHa1413Ana7SXYFfnmvrCF4hVP8
	 ARx+rrHtgdU2mAO6Lg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MsaW1-1scxLC3tCV-014uP1; Thu, 20
 Jun 2024 09:23:02 +0200
Message-ID: <c1bb7c1c-3d17-4346-9246-55dff63f1727@web.de>
Date: Thu, 20 Jun 2024 09:22:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v13 03/13] media: v4l2-jpeg: Export reference quantization and
 huffman tables
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Devarsh Thakkar
 <devarsht@ti.com>, David Huang <d-huang@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Aradhya Bhatia <a-bhatia1@ti.com>, Brandon Brnich <b-brnich@ti.com>,
 Darren Etheridge <detheridge@ti.com>, Jai Luthra <j-luthra@ti.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Lee Jones <lee@kernel.org>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Nishanth Menon <nm@ti.com>, Praneeth Bajjuri <praneeth@ti.com>,
 Prasanth Mantena <p-mantena@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Vijay Pothukuchi <vijayp@ti.com>
References: <20240607131900.3535250-1-devarsht@ti.com>
 <20240607132831.3551333-1-devarsht@ti.com>
 <59866428-342b-4ba4-a7c7-2df1477aa7e6@xs4all.nl>
 <e948cea7-d5c7-a7e6-d921-ad7c2f93cd5a@ti.com>
 <904289bb-96a0-4a0d-9046-96acd8843b98@xs4all.nl>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <904289bb-96a0-4a0d-9046-96acd8843b98@xs4all.nl>
X-Provags-ID: V03:K1:1u31HE0L81eGxzVfQmVMyNYyC/sb14RZsY9LEjfMLnxrp7TM92/
 gJN3L/RFXO6if7Y3qPzpkLHupi1Yp+oQMNsy8AWauY0SUjrcWyK4UIxJOOk5D6D5qVaDuKs
 ZIYRDJ8JW9m+XJ/+dXGLI3LwSGhcz5wpgk+FpLKPFjx23Fp9Kxfr5/EIwraa9xho+rG4pcm
 OIzsCOTHGJrtDttl71TQg==
UI-OutboundReport: notjunk:1;M01:P0:mA2WF1ENtl8=;pyvaK1XsIr33lRtvIl/7E6zfWMu
 mdKnyWj8TWqxwVyYXYkKFm1Onj3Te5Pl/2bL4kNfNphEuE6FIeWJHul0OxFApZwLDxna3acCW
 P5JzUPgVwasebE0gY4T4vIY4mTi/+JHiNKiazYKSQvk27WbQs7x4N7wRnzdPgauBY8T3jnulk
 2cV7+emROfjcI8VDOU50B22pKMeMA5ceuD3XKQAe+MRZJaoXjhgW2zcNtCSYdvIoAmNVvc5FO
 Ai8MsOCgPqvB3ZWYHZTvJQrkQa16Uz5bVjHZ3zE0APy7Ny9QutX2/4tESTihtcYhRRJ6RhBA+
 Qc8fFzTeigVxHaoP7xjEqlO08cOOZFstUI5DO1lalbHNmtE/CSqwYCIGAFscxt1KZ35dLbsad
 Jaf37eRLvI70ZR8NRydoID43SJ32SBdOafKSl3wnOmt6R05lfsxeGRQXc6RjJVDWSTYNKhHAE
 z9hp6+RcKFpHCNQ6R5lJb3+SLXlRTophB7rVKDgAb7zZtIFzAcnifojRx1kEgSstOyJERBKN/
 ZHhx1RE5DHDENbs5++DdisYmIEi6F57EG094aP0B3VPCOyUDvCeohIlNb4zRNMTfISncNE5L4
 MNY+6Bri8CRA4ojupyACj1AfJCU4EhnoN/VVr3q8jV7/JWSk1MZtc74Kqzxb4F+aA9/PYzuHm
 yxjICsHrXrTWHf0Z4Fta/vpg9beo40RcujxI+HrwhjXBgYVNP99ltwJSWQA/fP44SxJDLB9QP
 pgMVckHpNi4PfwQnZn//YxXJx+r1TkisillVj8ICQh41Ugd/8VAPJ3rVz+e3QoUd+97CjjMCV
 1JutU8RCqVyu/+WK5PE6komZr53qtN3z8UjTcU3Up41zplhJVRWoOCzo5Jzo9uyOTN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_002311_557955_294D47E0 
X-CRM114-Status: UNSURE (   3.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> Ignore any reviews by Markus Elfring,

There are some communication difficulties involved.


> he's a troll.

Some contributors occasionally got an other impression, didn't they?

Regards,
Markus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
