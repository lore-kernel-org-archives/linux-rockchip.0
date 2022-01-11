Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477FBC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jan 2022 08:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:Cc:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N3/bVCi1TWa5un+9HHkQx/a07VkS10ILDlFglv5kxXs=; b=i6QedcWkOxv8qL
	Ps1mnTlqLH/uSqFCrpfCyIVofu+8w9afNFFA+F14a4LZJPpeT6WORi7TEnx2UE+FCBTQgJS4Clsru
	5bf82+tU76yz8QXk3ZLdJxqscxOfPP81suE2DpyUOdwsP8Hj0oblYxQnHnom9KXWDUBOsfoALoXUN
	HJ3+hlXOAKcFL9I9xSCDeehpvLCCjh5kovkLDd3K2wUPxn5HJAphX0vSrdLSFgrkXA7tLDBOqT276
	zlcc9CKQwJHw6qm4RFJS/aNyvR+HAhvutIu2a2vSbU3vOKScpQtMwqhozXG/phlVoR8hio4ZQIj81
	EaVkC6zGI9MBbBbFdpkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7CQX-00FHz6-SE; Tue, 11 Jan 2022 08:22:45 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7CQV-00FHxN-SS; Tue, 11 Jan 2022 08:22:45 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 l16-20020a17090a409000b001b2e9628c9cso4507521pjg.4; 
 Tue, 11 Jan 2022 00:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:cc:reply-to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=8s/ubBm4CMzoy773ZTaMXyvoXj9Suifczp18+PqTu/Y=;
 b=nQdpHA+fTsW6/Matv1kTvyM0o0t/GciHubOzxYrt0P60VF5Sh4Ekps2nSoyTA7AANA
 waUCVMOcluHfUdunRqaLnyXbxAfIt3ZOy1lGeCWcinSU5kJO0ZxjEJbU1210/OVFtkLU
 3hN0KjarGxvUYFlqFvmUPgRixwXknGKy7yARmTlN0WiPM5fHX3+gTJtnCfvfRvY6Xrd8
 M3xLj4bEV26JHWXoQezXegxn4FoeZPSJPo9YSZk0ZerpmnFVjsIyMEkQPa+j+aWpqzYF
 EeNdDmq177m+fO3gbq4fgdtwWRCEHA1l/2QTu/6f2glnkQMiuE5PItKevSsgJxZRpgJ9
 xjDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:to:cc:reply-to:from:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=8s/ubBm4CMzoy773ZTaMXyvoXj9Suifczp18+PqTu/Y=;
 b=jUsJupqj7OWUvQCsQwywHtZIB0lVpU7AQDP0GVrYl2m0p0jmi0IDe9GNLpSNB7Pwye
 Xwp1tPMxUBqYDh5U5CR7aZkZBdMnYAvd+Ca89ApNf6bWin/ajaF+nxmpo+rOYhVEpgQ9
 OgfTnIZwcHEt1HEcQ/0t2vV8f4gt42RG/78Wg+OlCZYLpwoMR5Q5PAE5N7Yq1lpE+glH
 BbdADzXCVIMinTF0KHACdscxTNC1LytX5ZRz3Dtn36FsUv3kcl8VfVdrbWoTmtuBz5ib
 gJIsg765cYaxlO/Ysg3Re1UTbwPbjguX+WvyRLA42SdrCko542I9TK0omzDM3AULV13y
 k/Cw==
X-Gm-Message-State: AOAM532FTXnBkv0HX2d/yZMkG4aFZiMqV2/zcJY/RGvYxGokaAznfn1K
 4yBvxp4aVVpCT66kuE0ohx0=
X-Google-Smtp-Source: ABdhPJw1SZvgOJwJjhIAzsckFYxYtbdwTEnTvshufFf3hc5ZjORHdDxLQ99Q2bO6bxiPBO5PsO4OcQ==
X-Received: by 2002:a05:6a00:216f:b0:49f:dcb7:2bf2 with SMTP id
 r15-20020a056a00216f00b0049fdcb72bf2mr3421948pff.19.1641889362075; 
 Tue, 11 Jan 2022 00:22:42 -0800 (PST)
Received: from [192.168.1.7] ([124.123.173.144])
 by smtp.gmail.com with ESMTPSA id e20sm9262184pfd.104.2022.01.11.00.22.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Jan 2022 00:22:41 -0800 (PST)
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hansverk@cisco.com>, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
From: Suniel Mahesh <suniel.spartan@gmail.com>
Subject: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Message-ID: <9e7aa8de-30cf-e3e0-4c5f-e4b989ea8b48@gmail.com>
Date: Tue, 11 Jan 2022 13:52:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_002243_954348_5556125D 
X-CRM114-Status: GOOD (  11.48  )
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
Reply-To: 20200416115047.233720-1-paul.kocialkowski@bootlin.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Paul/All,

I have added this patch series onto linux-next and testing RGA on PX30.

Log Snippet:
root@px30-engicam-px30-core-ctouch2:/# dmesg | grep rga
rockchip-rga ff480000.rga: HW Version: 0x04.00
rockchip-rga ff480000.rga: Registered rockchip-rga as /dev/video0

How do I test this ? In the email you mentioned:

I tested it with a standalone utility setting V4L2_PIX_FMT_YUV420 on 
both output and capture. The issue should be pretty easy to reproduce.

Can you please share more information/any procedure on how to test.

Thanks and Regards
Suniel Mahesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
