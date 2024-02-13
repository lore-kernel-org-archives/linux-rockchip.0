Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B85C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 08:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nci3HbdZbCTxcPkEA1FG5qy8wfKZXWhGq+QNH6TS6gk=; b=k6PmCLMWucdF1L
	VRLyEhF2QUJDAqHN06/tFukhbN8hHsFCKWa+YXc5NXiV/eByXRq4ZI8B6i3GWXSU5lA2vY2Yt7k81
	Cu9Ud1Sqk6SGZpDM+rmwR9eJZht5tpF9DN2nGd2YX0p8QR8+9OBZvZN0+b4axbYDZCO/tBO/0YyIe
	AkREq6J+LExFfWfGd6UAxHqUgNRPY718tXcmJvhtCHg55Bi6EvzWN6ZTN6XhBCXqmDoBQMHCMfiCd
	0TqFXD55/in9xrC2b63ChK0tKbumsjhcwlYa3jLIoCFoJGEvfLJrqV3E9YqyYGKF7u3dYF3//6AM0
	j72Zc0KNUg1VnvQbOHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnqk-00000008Lh7-1F3B;
	Tue, 13 Feb 2024 08:09:06 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnqg-00000008LgS-32d7
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 08:09:04 +0000
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id DBA98FB03;
	Tue, 13 Feb 2024 09:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811236; bh=yKmzIACGmln6cc4um1JqjafqS8ErymUzJ7el3Su2Bto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cxrZ1tXQ+DTiT2bXkMROARspyq8fRVtd7B1+JhuSxyS/ITRKvC94ETl0dOFXO4qfb
	 7vqyewaas+9DiH2ZF3VJUdenX4oJL3P5qjdr0HH7TAJMJ+WpXM8z2XSUWxBpwTq8JY
	 zjstmSjFI0jSH/w4tqYvxxk8YhoDbJzONDCWhofQ3kfaJNeixH+cFFKEw8FvyzZJwb
	 wOIGBAZ2oVrE40PGkKWaJKOIZkkK7b5taRQUyNAimCOnAZtM8yLyVsTwwDSZwNLCQP
	 LACHxDfGoU9/UwJoAkk0ZDTnilK8ifnrJuxEbNzOBPg0K8pzKLLldEjmZeICzooHbZ
	 mC4YDrC3ikCgw==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeDCnu0LeCGH; Tue, 13 Feb 2024 09:00:35 +0100 (CET)
Date: Tue, 13 Feb 2024 09:00:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811235; bh=yKmzIACGmln6cc4um1JqjafqS8ErymUzJ7el3Su2Bto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YGGjLTNoQsDaOUQMux+e5bOF7f6QZY2pvlrtlF+ibfkO+J7IGcJ4ewWCM0S3TZ7iG
	 cIJFnPG4KaKCnNtfDwWoQvndgQ23IdmIZh5VGUwtyfrdTzZucQS26FO5Ic5NRg2A7C
	 5fuZhyHImzwk8FIPRKl9ZLW/h7AHfHPUVNY/z7po9aRTBf/GtO+Gsgd/Y2U+AnwfVY
	 Vx3Q33c2qVz/n6OuABIAWXPmdHvcJwGoTyu8EPiXGRI7D8G8q2Y97shogfKfHY0AuC
	 1wWfZhXnyFeA8oqpxCqrAzD6Hq7q+jsZvfQYyFuLhXV/rosdORDMuy3SCf91CTzb7/
	 ww4oh2Jvot4XQ==
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
	kernel@puri.sm, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3
 panel
Message-ID: <ZcshoKi9cbhZQ6V5@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240212184950.52210-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_000902_928469_CC213098 
X-CRM114-Status: GOOD (  12.04  )
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

Hi,
On Mon, Feb 12, 2024 at 12:49:44PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> =

> The RGB10MAX3 panel is a panel specific to the Powkiddy RGB10MAX3
> handheld device that measures 5 inches diagonally with a resolution
> of 720x1280.
> =

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh0=
57n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh=
057n00900.yaml
> index 97cccd8a8479..8dfe8951bf5b 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n0090=
0.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n0090=
0.yaml
> @@ -22,6 +22,8 @@ properties:
>      enum:
>        # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
>        - anbernic,rg353v-panel-v2
> +      # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
> +      - powkiddy,rgb10max3-panel
>        # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
>        - powkiddy,rgb30-panel
>        # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido

> -- =

> 2.34.1
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
