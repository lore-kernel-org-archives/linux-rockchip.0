From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v6 10/22] usb: dwc2: host: Properly set the HFIR
Date: Wed, 10 Feb 2016 02:08:45 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC43EE3C@US01WEMBX2.internal.synopsys.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
 <1454034013-24657-11-git-send-email-dianders@chromium.org>
 <56ADD2AF.3040901@rock-chips.com>
 <CAD=FV=UNi4xu0=tt0cwAFaCHiwyPm_UoGrckvzMG196Q9Egg7g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Kever Yang <kever.yang@rock-chips.com>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, =?gb2312?B?zuLBvLfl?= <william.wu@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, =?gb2312?B?SGVpa28gU3SouWJuZXI=?= <heiko@sntech.de>, Stefan Wahren <stefan.wahren@i2se.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMS8zMS8yMDE2IDI6MTkgUE0sIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4gS2V2ZXIsCj4gCj4g
T24gU3VuLCBKYW4gMzEsIDIwMTYgYXQgMToyMyBBTSwgS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IERvdWcsCj4+Cj4+IE9uIDAxLzI5LzIwMTYgMTA6MjAg
QU0sIERvdWdsYXMgQW5kZXJzb24gd3JvdGU6Cj4+Pgo+Pj4gQWNjb3JkaW5nIHRvIHRoZSBtb3N0
IHVwIHRvIGRhdGUgdmVyc2lvbiBvZiB0aGUgZHdjMiBkYXRhYm9vaywgdGhlIEZSSU5UCj4+PiBm
aWVsZCBvZiB0aGUgSEZJUiByZWdpc3RlciBzaG91bGQgYmUgcHJvZ3JhbW1lZCB0bzoKPj4+ICog
MTI1IHVzICogKFBIWSBjbG9jayBmcmVxIGZvciBIUykgLSAxCj4+PiAqIDEwMDAgdXMgKiAoUEhZ
IGNsb2NrIGZyZXEgZm9yIEZTL0xTKSAtIDEKPj4KPj4gSSBnb3QgMyB2ZXJzaW9uIG9mIGR3Y19v
dGcgZGF0YWJvb2ssIDIuNzRhLCAyLjk0YSBhbmQgMy4xMGEsCj4+IGFsbCB0aGUgZG9jIGRlc2Ny
aWJlIHRoZSBGckludCBhczoKPiAKPiBDYW4geW91IGNoZWNrIHRvIHNlZSBpZiB5b3UgY2FuIGdl
dCAzLjMwYSAoT2N0b2JlciAyMDE1KT8KPiAKPiAKPj4gKiAxMjUgdXMgKiAoUEhZIGNsb2NrIGZy
ZXEgZm9yIEhTKQo+PiAqIDEwMDAgdXMgKiAoUEhZIGNsb2NrIGZyZXEgZm9yIEZTL0xTKQo+Pgo+
PiBNYXliZSBKb2huIGNhbiBoZWxwIHRvIGNoZWNrIHRoZSBkZXNpZ24uCj4gCj4gWWVzLCB0aGlz
IHJlYWxseSBuZWVkcyBKb2huIG9yIHNvbWVvbmUgYXQgU3lub3BzeXMuCj4gCj4gCgpUaGUgIi0g
MSIgaXMgdGhlIGNvcnJlY3QgdmFsdWUuIFRoZSBkYXRhYm9vayB3YXMgY29ycmVjdGVkIGluIDMu
MzBhCmFuZCB0aGlzIGFwcGxpZXMgdG8gYWxsIHByZXZpb3VzIHZlcnNpb25zIG9mIHRoZSBjb3Jl
LgoKSm9obgo=
