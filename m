Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CE0CA100F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 17:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzLY4F+h+VFSw5rA7vvqlpEdjN96qg9mA6q5RNbORg8=; b=ee30FjObCNuYnJ
	k9ttc6i9ZMvTmzC9nR7LCV3No3+yJzpeF+35FQcKuYY9GQb37IMOC0lsyr53ba6gFteS9MrBrOrxN
	bG/LGfZfxpuXbLxPUIvVFI+q1KO4WPae6bPn4cVd9VSUz5Tu0mZjUROl8zByMp8DoPknu/VlZyVtP
	Z8vi45/L5+IZ8xGmAkh160pqyTEQ7UDocUeWs3w3x36h///Fgr37Tmq62s7yQ9mIqxhPGT2EbaScf
	RamZC7Qn3oTBhRbJYSiewHm0pTFmFwMRid2RKpIF0PZf39y6nhPVNeLu5i/AIgBo6z++ilOnLAaz5
	NB7O8H0Dy7Mej9tUsugQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jtI-0000000B2la-2HTM;
	Mon, 22 Sep 2025 16:59:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0jtF-0000000B2l1-0ex3;
	Mon, 22 Sep 2025 16:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1758560384; bh=WyeVZUr9UOZR4eTTeq2TQ6nQmLS0wUEiryNXHPbN7vI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=slDo/3ZoJZMXKAxwXZ2fFlY2HKpdeQv4uMNN0M4TPjwwQU0XUl4h13ygGpKpa56N8
	 GXChkY2h37tQtX+bipUYaLibgP5/56F0ko9Z2TZ4/0OCIrWLEHsbTQrrSHib6S9wQE
	 iuHA1la2l/0MXjJYoSoollugh0WYZuwlHYCsquIU=
Date: Mon, 22 Sep 2025 18:59:43 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] arm64: dts: rk3399-pinephone-pro: Add
 accelerometer sensor support
Message-ID: <kkxecpaatgeqk7ru4maqtbgftiqmdjjweam2zw6xrvbbzpqy4a@nz6llsm37qdx>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Rudraksha Gupta <guptarud@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-2-e6bcc6ca74ae@gmail.com>
 <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
 <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_095949_644210_9693B5E7 
X-CRM114-Status: GOOD (  19.05  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rudraksha,

On Sun, Sep 21, 2025 at 02:07:03PM -0700, Rudraksha Gupta wrote:
> Hello,
> =

> > I'm not sure where you got this patch, but it's not from me (I know for
> sure
> > I never did any mount-matrix testing/DT patches) and should not have my
> > Signed-of-by.
> =

> This is where I sourced each of the commits:
> =

> - Add light/proximity sensor support
> =A0 - https://codeberg.org/megi/linux/commit/f171bc7013bc7ad3de9af817bfbc=
bfa548ebe01c
> - Add accelerometer sensor support
> =A0 - https://codeberg.org/megi/linux/commit/b0bb7633e073a6760fa213b8c4a7=
8ea2e73c7bf1
> - Add magnetometer sensor support
> =A0 - https://codeberg.org/megi/linux/commit/2f7e67f451f16eaf15b81aa1dbdf=
126d54927d35
> - Add mount-matrix for magnetometer
> =A0 - https://codeberg.org/megi/linux/commit/d7cd2eab931e32fa94408a96d73b=
4e6c0616107a
> - Fix voltage threshold for volume down key
> =A0 - https://codeberg.org/megi/linux/commit/7c496a5cc27ed4e38b740f36c2d8=
b2c62f80ae54
> =

> I will add my sources to the cover letter moving forward.
> =

> =

> =

> > Looking at where the magnetometer is mounted, it's mounted on the bottom
> side of
> > the PCB (U29 chip):
> > ...
> > So based on that mount-matrix should be:
> >
> >=A0 =A0 =A0 =A0 =A0mount-matrix =3D
> >=A0 =A0 =A0 =A0 =A0 =A0 =A0"0", "1", "0",
> >=A0 =A0 =A0 =A0 =A0 =A0 =A0"1", "0", "0",
> >=A0 =A0 =A0 =A0 =A0 =A0 =A0"0", "0", "-1";
> =

> Thanks, addressed in v3!

Well, it's not clear this will work as expected. Someone should at least te=
st it
with some well working userspace sensor fusion program, that uses this
information, (along with the mount matrix for accelerometer/gyro) for eg.
compass feature or something like that.

Also I don't see this matrix in v3 patch set.

Did you test it? Any suggestions on what people actully use for sensor fusi=
on on
Linux?

Regards,
	o.

> =

> Thanks,
> Rudraksha
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
